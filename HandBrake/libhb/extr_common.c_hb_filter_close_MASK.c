#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  settings; struct TYPE_4__* sub_filter; } ;
typedef  TYPE_1__ hb_filter_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2( hb_filter_object_t ** _f )
{
    hb_filter_object_t * f = *_f;

    if (f == NULL)
    {
        return;
    }
    FUNC2(&f->sub_filter);
    FUNC1(&f->settings);

    FUNC0( f );
    *_f = NULL;
}