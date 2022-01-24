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
typedef  int /*<<< orphan*/  const hb_dict_t ;
struct TYPE_3__ {int /*<<< orphan*/  short_name; } ;
typedef  TYPE_1__ hb_container_t ;

/* Variables and functions */
 int HB_MUX_MASK_MP4 ; 
 int /*<<< orphan*/  HB_VALUE_TYPE_BOOL ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC13 (void*,int /*<<< orphan*/ ) ; 

int FUNC14(const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_value_t *mux_value = FUNC4(preset, "FileFormat");
    int mux;
    if (FUNC12(mux_value) == HB_VALUE_TYPE_STRING)
    {
        mux = FUNC3(FUNC9(mux_value));
        if (mux == 0)
            mux = FUNC1(
                                            FUNC9(mux_value));
    }
    else
    {
        mux = FUNC8(mux_value);
    }
    hb_container_t *container = FUNC2(mux);
    if (container == NULL)
    {
        char *str = FUNC10(mux_value);
        FUNC7("Invalid container (%s)", str);
        FUNC0(str);
        return -1;
    }

    hb_dict_t *dest_dict = FUNC4(job_dict, "Destination");
    FUNC6(dest_dict, "Mux", FUNC11(container->short_name));

    FUNC6(dest_dict, "AlignAVStart",
                FUNC13(FUNC4(preset, "AlignAVStart"),
                               HB_VALUE_TYPE_BOOL));
    FUNC6(dest_dict, "InlineParameterSets",
                FUNC13(FUNC4(preset, "InlineParameterSets"),
                               HB_VALUE_TYPE_BOOL));
    if (mux & HB_MUX_MASK_MP4)
    {
        hb_dict_t *mp4_dict = FUNC5();
        FUNC6(mp4_dict, "Mp4Optimize",
                    FUNC13(FUNC4(preset, "Mp4HttpOptimize"),
                                   HB_VALUE_TYPE_BOOL));
        FUNC6(mp4_dict, "IpodAtom",
                    FUNC13(FUNC4(preset, "Mp4iPodCompatible"),
                                   HB_VALUE_TYPE_BOOL));
        FUNC6(dest_dict, "Mp4Options", mp4_dict);
    }

    return 0;
}