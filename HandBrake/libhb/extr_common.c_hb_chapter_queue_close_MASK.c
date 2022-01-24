#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  list_chapter; } ;
typedef  TYPE_1__ hb_chapter_queue_t ;
typedef  TYPE_1__ hb_chapter_queue_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC4(hb_chapter_queue_t **_q)
{
    hb_chapter_queue_t      * q = *_q;
    hb_chapter_queue_item_t * item;

    if (q == NULL)
    {
        return;
    }
    while ((item = FUNC2(q->list_chapter, 0)) != NULL)
    {
        FUNC3(q->list_chapter, item);
        FUNC0(item);
    }
    FUNC1(&q->list_chapter);
    FUNC0(q);
    *_q = NULL;
}