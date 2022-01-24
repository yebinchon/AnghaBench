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
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;
typedef  int /*<<< orphan*/ * hb_dict_iter_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(const hb_dict_t *dict, hb_dict_iter_t *iter,
                     const char **key, hb_value_t **val)
{
    if (*iter == NULL)
        return 0;
    if (key != NULL)
        *key = FUNC0(*iter);
    if (val != NULL)
        *val = FUNC2(*iter);
    *iter = FUNC1((hb_dict_t*)dict, *iter);
    return 1;
}