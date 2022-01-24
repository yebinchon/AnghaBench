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
typedef  scalar_t__ u32 ;
struct bte_pcb {int /*<<< orphan*/ * ctl_pcb; int /*<<< orphan*/ * data_pcb; scalar_t__ state; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  ERR_VAL ; 
 scalar_t__ STATE_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_disconnect_cfm ; 

s32 FUNC3(struct bte_pcb *pcb)
{
	u32 level;
	err_t err = ERR_OK;

	if(pcb==NULL) return ERR_VAL;

	FUNC0(level);
	pcb->state = (u32)STATE_DISCONNECTING;
	if(pcb->data_pcb!=NULL )
		err = FUNC2(pcb->data_pcb,l2cap_disconnect_cfm);
	else if(pcb->ctl_pcb!=NULL)
		err = FUNC2(pcb->ctl_pcb,l2cap_disconnect_cfm);
	FUNC1(level);

	return err;
}