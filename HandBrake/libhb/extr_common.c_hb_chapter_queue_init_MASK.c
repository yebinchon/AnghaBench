#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * list_chapter; } ;
typedef  TYPE_1__ hb_chapter_queue_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

hb_chapter_queue_t * FUNC3(void)
{
    hb_chapter_queue_t * q;

    q = FUNC0(1, sizeof(*q));
    if (q != NULL)
    {
        q->list_chapter = FUNC2();
        if (q->list_chapter == NULL)
        {
            FUNC1(q);
            q = NULL;
        }
    }
    return q;
}