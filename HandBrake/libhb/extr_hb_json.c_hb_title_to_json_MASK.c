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
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

char* FUNC3( hb_handle_t *h, int title_index )
{
    hb_dict_t *dict = FUNC0(h, title_index);
    if (dict == NULL)
        return NULL;

    char *json_title = FUNC2(dict);
    FUNC1(&dict);

    return json_title;
}