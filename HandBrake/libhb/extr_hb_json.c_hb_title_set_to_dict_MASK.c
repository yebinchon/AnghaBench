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
typedef  int /*<<< orphan*/  json_error_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_3__ {int /*<<< orphan*/  list_title; int /*<<< orphan*/  feature; } ;
typedef  TYPE_1__ hb_title_set_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*) ; 

hb_dict_t* FUNC7( const hb_title_set_t * title_set )
{
    hb_dict_t *dict;
    json_error_t error;
    int ii;

    dict = FUNC6(&error, 0,
        "{s:o, s:[]}",
        "MainFeature", FUNC5(title_set->feature),
        "TitleList");
    // process title list
    hb_dict_t *title_list = FUNC0(dict, "TitleList");
    for (ii = 0; ii < FUNC1(title_set->list_title); ii++)
    {
        hb_title_t *title = FUNC2(title_set->list_title, ii);
        hb_dict_t *title_dict = FUNC3(title);
        FUNC4(title_list, title_dict);
    }

    return dict;
}