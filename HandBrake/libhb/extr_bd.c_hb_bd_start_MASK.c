#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int index; int /*<<< orphan*/  duration; } ;
typedef  TYPE_2__ hb_title_t ;
struct TYPE_9__ {int next_chap; int /*<<< orphan*/ * stream; int /*<<< orphan*/  h; scalar_t__ chapter; int /*<<< orphan*/  bd; TYPE_1__** title_info; int /*<<< orphan*/  duration; } ;
typedef  TYPE_3__ hb_bd_t ;
struct TYPE_7__ {int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  BD_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC3( hb_bd_t * d, hb_title_t *title )
{
    BD_EVENT event;

    d->duration  = title->duration;

    // Calling bd_get_event initializes libbluray event queue.
    FUNC1( d->bd, d->title_info[title->index - 1]->idx );
    FUNC0( d->bd, &event );
    d->chapter = 0;
    d->next_chap = 1;
    d->stream = FUNC2( d->h, title );
    if ( d->stream == NULL )
    {
        return 0;
    }
    return 1;
}