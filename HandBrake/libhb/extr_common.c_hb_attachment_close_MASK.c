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
struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* data; } ;
typedef  TYPE_1__ hb_attachment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1( hb_attachment_t **attachment )
{
    if ( attachment && *attachment )
    {
        FUNC0((*attachment)->data);
        FUNC0((*attachment)->name);
        FUNC0(*attachment);
        *attachment = NULL;
    }
}