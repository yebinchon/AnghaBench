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
typedef  int /*<<< orphan*/  hb_dict_t ;
typedef  int /*<<< orphan*/  hb_dict_iter_t ;

/* Variables and functions */
 int /*<<< orphan*/  HB_DICT_ITER_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

hb_dict_iter_t FUNC1(const hb_dict_t *dict)
{
    if (dict == NULL)
        return HB_DICT_ITER_DONE;
    return FUNC0((hb_dict_t*)dict);
}