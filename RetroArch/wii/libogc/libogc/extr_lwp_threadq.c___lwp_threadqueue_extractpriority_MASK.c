#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lwp_thrqueue ;
struct TYPE_13__ {struct TYPE_13__* prev; struct TYPE_13__* next; } ;
typedef  TYPE_2__ lwp_node ;
struct TYPE_15__ {TYPE_2__* last; TYPE_2__* first; } ;
struct TYPE_12__ {TYPE_7__ block2n; } ;
struct TYPE_14__ {int /*<<< orphan*/  timer; TYPE_1__ wait; int /*<<< orphan*/  cur_state; } ;
typedef  TYPE_3__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 TYPE_2__* FUNC5 (TYPE_7__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(lwp_thrqueue *queue,lwp_cntrl *thethread)
{
	u32 level;
	lwp_cntrl *first;
	lwp_node *curr,*next,*prev,*new_first,*new_sec,*last;

	curr = (lwp_node*)thethread;

	FUNC0(level);
	if(FUNC6(thethread->cur_state)) {
		next = curr->next;
		prev = curr->prev;

		if(!FUNC3(&thethread->wait.block2n)) {
			new_first = thethread->wait.block2n.first;
			first = (lwp_cntrl*)new_first;
			last = thethread->wait.block2n.last;
			new_sec = new_first->next;

			prev->next = new_first;
			next->prev = new_first;
			new_first->next = next;
			new_first->prev = prev;

			if(!FUNC4(&thethread->wait.block2n)) {
				new_sec->prev = FUNC2(&first->wait.block2n);
				first->wait.block2n.first = new_sec;
				first->wait.block2n.last = last;
				last->next = FUNC5(&first->wait.block2n);
			}
		} else {
			prev->next = next;
			next->prev = prev;
		}
		if(!FUNC9(&thethread->timer)) {
			FUNC1(level);
			FUNC7(thethread);
		} else {
			FUNC8(&thethread->timer);
			FUNC1(level);
			FUNC10(&thethread->timer);
			FUNC7(thethread);
		}
	} else
		FUNC1(level);
}