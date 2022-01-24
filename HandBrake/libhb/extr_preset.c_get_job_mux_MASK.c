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
typedef  int /*<<< orphan*/  hb_container_t ;

/* Variables and functions */
 int HB_MUX_INVALID ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(hb_dict_t *job_dict)
{
    int mux;

    hb_dict_t *dest_dict = FUNC4(job_dict, "Destination");
    hb_value_t *mux_value = FUNC4(dest_dict, "Mux");
    if (FUNC9(mux_value) == HB_VALUE_TYPE_STRING)
    {
        mux = FUNC3(FUNC7(mux_value));
        if (mux == 0)
            mux = FUNC1(
                                                FUNC7(mux_value));
    }
    else
    {
        mux = FUNC6(mux_value);
    }
    hb_container_t *container = FUNC2(mux);
    if (container == NULL)
    {
        char *str = FUNC8(mux_value);
        FUNC5("Invalid container (%s)", str);
        FUNC0(str);
        return HB_MUX_INVALID;
    }
    return mux;
}