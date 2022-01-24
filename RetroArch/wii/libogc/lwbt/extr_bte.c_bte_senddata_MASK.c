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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pbuf {scalar_t__ payload; } ;
struct bte_pcb {scalar_t__ state; int /*<<< orphan*/  data_pcb; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_CLSD ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_VAL ; 
 int HIDP_DATA_RTYPE_OUPUT ; 
 int HIDP_TRANS_DATA ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 scalar_t__ STATE_DISCONNECTED ; 
 scalar_t__ STATE_DISCONNECTING ; 
 struct pbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pbuf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*,int /*<<< orphan*/ ) ; 

s32 FUNC5(struct bte_pcb *pcb,void *message,u16 len)
{
	err_t err;
	struct pbuf *p;

	if(pcb==NULL || message==NULL || len==0) return ERR_VAL;
	if(pcb->state==STATE_DISCONNECTING || pcb->state==STATE_DISCONNECTED) return ERR_CLSD;

	if((p=FUNC1(PBUF_RAW,(1 + len),PBUF_RAM))==NULL) {
		FUNC0("bte_senddata: Could not allocate memory for pbuf\n");
		return ERR_MEM;
	}

	((u8*)p->payload)[0] = (HIDP_TRANS_DATA|HIDP_DATA_RTYPE_OUPUT);
	FUNC4(p->payload+1,message,len);

	err = FUNC3(pcb->data_pcb,p);
	FUNC2(p);

	return err;
}