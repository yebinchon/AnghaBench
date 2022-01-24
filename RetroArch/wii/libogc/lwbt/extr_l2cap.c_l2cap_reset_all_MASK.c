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
struct l2cap_seg {struct l2cap_seg* next; } ;
struct l2cap_pcb_listen {struct l2cap_pcb_listen* next; } ;
struct l2cap_pcb {struct l2cap_pcb* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2cap_seg**,struct l2cap_seg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct l2cap_seg*) ; 
 struct l2cap_pcb* l2cap_active_pcbs ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_pcb*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct l2cap_seg* l2cap_insegs ; 
 struct l2cap_pcb_listen* l2cap_listen_pcbs ; 
 int /*<<< orphan*/  l2cap_segs ; 

void FUNC4(void)
{
	struct l2cap_pcb *pcb, *tpcb;
	struct l2cap_pcb_listen *lpcb, *tlpcb;
	struct l2cap_seg *seg, *tseg;

	for(pcb = l2cap_active_pcbs; pcb != NULL;) {
		tpcb = pcb->next;
		FUNC2(pcb);
		pcb = tpcb;
	}

	for(lpcb = l2cap_listen_pcbs; lpcb != NULL;) {
		tlpcb = lpcb->next;
		FUNC2((struct l2cap_pcb *)lpcb);
		lpcb = tlpcb;
	}

	for(seg = l2cap_insegs; seg != NULL;) {
		tseg = seg->next;
		FUNC0(&(l2cap_insegs), seg);
		FUNC1(&l2cap_segs, seg);
		seg = tseg;
	}

	FUNC3();
}