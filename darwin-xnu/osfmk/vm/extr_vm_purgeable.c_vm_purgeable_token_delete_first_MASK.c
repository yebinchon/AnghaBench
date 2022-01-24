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
typedef  int token_idx_t ;
typedef  int /*<<< orphan*/  purgeable_q_t ;
struct TYPE_2__ {int next; scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int token_free_idx ; 
 TYPE_1__* tokens ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(purgeable_q_t queue)
{
	FUNC0(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
	token_idx_t     token = FUNC1(queue);

	if (token) {
		/* stick removed token on free queue */
		tokens[token].next = token_free_idx;
		tokens[token].prev = 0;
		token_free_idx = token;
	}
}