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
typedef  scalar_t__ u8_t ;
struct hci_pcb {int dummy; } ;
struct bt_state {scalar_t__ hci_inited; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_CONN ; 
 int /*<<< orphan*/  ERR_OK ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct bt_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static err_t FUNC3(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
	err_t err;
	struct bt_state *state = (struct bt_state*)arg;

	if(state==NULL) return ERR_OK;

	state->hci_inited = 0;
	FUNC1(NULL);
	if(result==HCI_SUCCESS)
		err = ERR_OK;
	else
		err = ERR_CONN;

	FUNC2();
	return FUNC0(state,err);
}