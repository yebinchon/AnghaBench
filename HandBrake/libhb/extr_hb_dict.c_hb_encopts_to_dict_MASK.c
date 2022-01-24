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

/* Variables and functions */
 int HB_VCODEC_X264_MASK ; 
 int HB_VCODEC_X265_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char const*) ; 

hb_dict_t * FUNC9(const char * encopts, int encoder)
{
    hb_dict_t * dict = NULL;

    if (encopts && *encopts)
    {
        char *cur_opt, *opts_start, *value;
        const char *name;
        dict = FUNC1();
        if( !dict )
            return NULL;
        cur_opt = opts_start = FUNC8(encopts);
        if (opts_start)
        {
            while (*cur_opt)
            {
                name = cur_opt;
                cur_opt += FUNC7(cur_opt, ":");
                if (*cur_opt)
                {
                    *cur_opt = 0;
                    cur_opt++;
                }
                value = FUNC6(name, '=');
                if (value)
                {
                    *value = 0;
                    value++;
                }
                // x264 has multiple names for some options
                if (encoder & HB_VCODEC_X264_MASK)
                    name = FUNC4(name);
#if HB_PROJECT_FEATURE_X265
                // x265 has multiple names for some options
                if (encoder & HB_VCODEC_X265_MASK)
                    name = hb_x265_encopt_name(name);
#endif
                if (name != NULL)
                {
                    FUNC2(dict, name, FUNC3(value));
                }
            }
        }
        FUNC0(opts_start);
    }
    return dict;
}