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
struct hci_pcb {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * hci_active_links ; 
 int /*<<< orphan*/ * hci_dev ; 
 int /*<<< orphan*/  hci_inq_results ; 
 int /*<<< orphan*/  hci_link_key_results ; 
 int /*<<< orphan*/  hci_links ; 
 int /*<<< orphan*/  hci_pcbs ; 
 int /*<<< orphan*/ * hci_tmp_link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

err_t FUNC6(void)
{
	FUNC3();
	FUNC4();

	FUNC2(&hci_pcbs);
	FUNC2(&hci_links);
	FUNC2(&hci_inq_results);
	FUNC2(&hci_link_key_results);

	if((hci_dev=FUNC1(&hci_pcbs))==NULL) {
		FUNC0("hci_init: Could not allocate memory for hci_dev\n");
		return ERR_MEM;
	}
	FUNC5(hci_dev,0,sizeof(struct hci_pcb));

	hci_active_links = NULL;
	hci_tmp_link = NULL;

	return ERR_OK;
}