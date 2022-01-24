#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hu_textline_t ;
struct TYPE_3__ {int /*<<< orphan*/ * on; int /*<<< orphan*/  l; } ;
typedef  TYPE_1__ hu_itext_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void FUNC1(hu_itext_t* it)
{

    hu_textline_t *l = &it->l;

    if (!*it->on)
	return;
    FUNC0(l, true); // draw the line w/ cursor

}