#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8_t ;
struct hci_pcb {int dummy; } ;
struct bt_state {int dummy; } ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_CONN ; 
 scalar_t__ ERR_OK ; 
#define  HCI_HC_BB_OGF 128 
 int HCI_SUCCESS ; 
 int HCI_WRITE_COD ; 
 int HCI_WRITE_INQUIRY_MODE ; 
 int HCI_WRITE_INQUIRY_SCAN_TYPE ; 
 int HCI_WRITE_LOCAL_NAME ; 
 int HCI_WRITE_PAGE_SCAN_TYPE ; 
 int HCI_WRITE_PAGE_TIMEOUT ; 
 int HCI_WRITE_SCAN_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (struct bt_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

err_t FUNC9(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
	err_t err = ERR_OK;
	u8_t dev_cod[] = {0x00, 0x04,0x48};
	struct bt_state *state = (struct bt_state*)arg;

	FUNC0("bte_hci_initsub_complete(%02x,%02x)\n",ogf,ocf);
	switch(ogf) {
		case HCI_HC_BB_OGF:
			if(ocf==HCI_WRITE_INQUIRY_MODE) {
				if(result==HCI_SUCCESS) {
					FUNC6(0x01);
				} else
					err = ERR_CONN;
			} else if(ocf==HCI_WRITE_PAGE_SCAN_TYPE) {
				if(result==HCI_SUCCESS) {
					FUNC4(0x01);
				} else
					err = ERR_CONN;
			} else if(ocf==HCI_WRITE_INQUIRY_SCAN_TYPE) {
				if(result==HCI_SUCCESS) {
					FUNC3(dev_cod);
				} else
					err = ERR_CONN;
			} else if(ocf==HCI_WRITE_COD) {
				if(result==HCI_SUCCESS) {
					FUNC7(0x8000);
				} else
					err = ERR_CONN;
			} else if(ocf==HCI_WRITE_PAGE_TIMEOUT) {
				if(result==HCI_SUCCESS) {
					FUNC5((u8_t*)"Wii",4);
				} else
					err = ERR_CONN;
			} else if(ocf==HCI_WRITE_LOCAL_NAME) {
				if(result==HCI_SUCCESS) {
					FUNC8(0x02);
				} else
					err = ERR_CONN;
			} else if(ocf==HCI_WRITE_SCAN_ENABLE) {
				if(result==HCI_SUCCESS) {
					FUNC2(NULL);
					return FUNC1(state,ERR_OK);
				} else
					err = ERR_CONN;
			}
			break;
		default:
			FUNC0("Unknown command complete event. OGF = 0x%x OCF = 0x%x\n", ogf, ocf);
			err = ERR_CONN;
			break;

	}

	if(err!=ERR_OK) FUNC1(state,err);
	return err;
}