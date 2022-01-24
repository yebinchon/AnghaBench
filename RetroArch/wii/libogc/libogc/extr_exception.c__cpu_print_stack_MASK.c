#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  TYPE_1__* frame_rec_t ;
struct TYPE_2__ {scalar_t__ lr; struct TYPE_2__* up; } ;

/* Variables and functions */
 int CPU_STACK_TRACE_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void *pc,void *lr,void *r1)
{
	register u32 i = 0;
	register frame_rec_t l,p = (frame_rec_t)lr;

	l = p;
	p = r1;
	if(!p) __asm__ __volatile__("mr %0,%%r1" : "=r"(p));

	FUNC0("\n\tSTACK DUMP:");

	for(i=0;i<CPU_STACK_TRACE_DEPTH-1 && p->up;p=p->up,i++) {
		if(i%4) FUNC0(" --> ");
		else {
			if(i>0) FUNC0(" -->\n\t");
			else FUNC0("\n\t");
		}

		switch(i) {
			case 0:
				if(pc) FUNC0("%p",pc);
				break;
			case 1:
				if(!l) l = (frame_rec_t)FUNC1(8);
				FUNC0("%p",(void*)l);
				break;
			default:
				FUNC0("%p",(void*)(p->up->lr));
				break;
		}
	}
}