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
typedef  int /*<<< orphan*/  hb_value_array_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*,char*,int) ; 

__attribute__((used)) static hb_value_t* FUNC16(const hb_dict_t * preset, int *mask)
{
    int copy_mask = 0;
    hb_value_array_t *out_copy_mask, *in_copy_mask;

    if (mask != NULL)
        *mask = 0;
    in_copy_mask  = FUNC3(preset, "AudioCopyMask");
    out_copy_mask = FUNC8();
    if (in_copy_mask != NULL)
    {
        int count, ii;
        count = FUNC9(in_copy_mask);
        for (ii = 0; ii < count; ii++)
        {
            int codec;
            hb_value_t *value;
            value = FUNC7(in_copy_mask, ii);
            if (FUNC14(value) == HB_VALUE_TYPE_STRING)
            {
                char *tmp = NULL;
                const char * s = FUNC12(value);
                // Only codecs that start with 'copy:' can be copied
                if (FUNC15(s, "copy:", 5))
                {
                    s = tmp = FUNC5("copy:%s", s);
                }
                codec = FUNC1(s);
                if (codec == 0)
                {
                    FUNC4("Invalid audio codec in autopassthru copy mask (%s)", s);
                    FUNC4("Codec name is invalid or can not be copied");
                    FUNC0(tmp);
                    FUNC10(&out_copy_mask);
                    return NULL;
                }
                FUNC0(tmp);
            }
            else
            {
                codec = FUNC11(value);
            }
            FUNC6(out_copy_mask, FUNC13(
                FUNC2(codec)));
            copy_mask |= codec;
        }
    }
    if (mask != NULL)
        *mask = copy_mask;
    return out_copy_mask;
}