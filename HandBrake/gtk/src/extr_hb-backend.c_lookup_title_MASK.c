#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  int /*<<< orphan*/  hb_list_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

const hb_title_t*
FUNC3(hb_handle_t *h, int title_id, int *index)
{
    int ii = FUNC2(h, title_id);

    if (index != NULL)
        *index = ii;
    if (ii < 0)
        return NULL;

    hb_list_t *list;
    list = FUNC0(h);
    return FUNC1(list, ii);
}