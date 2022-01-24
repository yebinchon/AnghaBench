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
struct TYPE_3__ {int index; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_list_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(hb_handle_t *h, int title_id)
{
    if (h == NULL)
        return -1;

    hb_list_t *list;
    const hb_title_t *title;
    int count, ii;

    list = FUNC0(h);
    count = FUNC1(list);
    for (ii = 0; ii < count; ii++)
    {
        title = FUNC2(list, ii);
        if (title_id == title->index)
        {
            return ii;
        }
    }
    return -1;
}