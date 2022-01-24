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
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_4__ {int /*<<< orphan*/  feature; int /*<<< orphan*/  list_title; } ;
typedef  TYPE_1__ hb_title_set_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ json ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC8( hb_title_set_t * title_set )
{
    if (json)
    {
        hb_dict_t * title_set_dict;
        char      * title_set_json;

        title_set_dict = FUNC5(title_set);
        title_set_json = FUNC7(title_set_dict);
        FUNC6(&title_set_dict);
        FUNC1(stdout, "JSON Title Set: %s\n", title_set_json);
        FUNC2(title_set_json);
    }
    else
    {
        int i;
        hb_title_t * title;

        for( i = 0; i < FUNC3( title_set->list_title ); i++ )
        {
            title = FUNC4( title_set->list_title, i );
            FUNC0( title, title_set->feature );
        }
    }
}