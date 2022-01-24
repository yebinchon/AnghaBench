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
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_3__ {scalar_t__ enforce_order; } ;
typedef  TYPE_1__ hb_filter_object_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

void FUNC8( hb_value_array_t * list, hb_dict_t * filter_dict )
{
    int new_id = FUNC0(filter_dict, "ID");

    hb_filter_object_t * filter = FUNC2(new_id);
    if (filter == NULL)
    {
        FUNC1("hb_add_filter2: Invalid filter ID %d", new_id);
        FUNC7(&filter_dict);
        return;
    }
    if (filter->enforce_order)
    {
        // Find the position in the filter chain this filter belongs in
        int ii, len;

        len = FUNC6(list);
        for( ii = 0; ii < len; ii++ )
        {
            hb_value_t * f = FUNC4(list, ii);
            int id = FUNC0(f, "ID");
            if (id > new_id)
            {
                FUNC5(list, ii, filter_dict);
                return;
            }
            else if ( id == new_id )
            {
                // Don't allow the same filter to be added twice
                FUNC7(&filter_dict);
                return;
            }
        }
    }
    // No position found or order not enforced for this filter
    FUNC3(list, filter_dict);
}