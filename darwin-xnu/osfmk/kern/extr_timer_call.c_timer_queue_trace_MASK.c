#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* timer_call_t ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_11__ {int /*<<< orphan*/  count; int /*<<< orphan*/  head; } ;
typedef  TYPE_2__ mpqueue_head_t ;
struct TYPE_12__ {int /*<<< orphan*/  func; int /*<<< orphan*/  entry_time; int /*<<< orphan*/  deadline; } ;
struct TYPE_10__ {int /*<<< orphan*/  soft_deadline; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_NONE ; 
 int DBG_FUNC_START ; 
 int DECR_TIMER_QUEUE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 TYPE_8__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdebug_enable ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

void
FUNC14(
	mpqueue_head_t			*queue)
{
	timer_call_t	call;
	spl_t		s;

	if (!kdebug_enable)
		return;

	s = FUNC10();
	FUNC12(queue);

	FUNC2(KDEBUG_TRACE,
        	DECR_TIMER_QUEUE | DBG_FUNC_START,
		queue->count, FUNC4(), 0, 0, 0); 

	if (!FUNC6(&queue->head)) {
		call = FUNC1(FUNC8(&queue->head));
		do {
			FUNC2(KDEBUG_TRACE,
        			DECR_TIMER_QUEUE | DBG_FUNC_NONE,
				call->soft_deadline,
				FUNC0(call)->deadline,
				FUNC0(call)->entry_time,
				FUNC3(FUNC0(call)->func),
				0);
			call = FUNC1(FUNC9(FUNC5(call)));
		} while (!FUNC7(&queue->head, FUNC5(call)));
	}

	FUNC2(KDEBUG_TRACE,
        	DECR_TIMER_QUEUE | DBG_FUNC_END,
		queue->count, FUNC4(), 0, 0, 0); 

	FUNC13(queue);
	FUNC11(s);
}