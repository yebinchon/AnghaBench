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
struct bte_pcb {int /*<<< orphan*/  cmdq; scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ STATE_NOTREADY ; 
 int /*<<< orphan*/  bte_pcbs ; 
 struct bte_pcb* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bte_pcb*,int /*<<< orphan*/ ,int) ; 

struct bte_pcb* FUNC3()
{
	struct bte_pcb *pcb;

	if((pcb=FUNC1(&bte_pcbs))==NULL) return NULL;

	FUNC2(pcb,0,sizeof(struct bte_pcb));

	pcb->state = (u32)STATE_NOTREADY;
	FUNC0(&(pcb->cmdq));

	return pcb;
}