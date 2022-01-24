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
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVBSFList ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC7(const char *str, AVBSFList *bsf_lst)
{
    char *bsf_name, *bsf_options_str, *buf;
    AVDictionary *bsf_options = NULL;
    int ret = 0;

    if (!(buf = FUNC5(str)))
        return FUNC0(ENOMEM);

    bsf_name = FUNC6(buf, "=", &bsf_options_str);
    if (!bsf_name) {
        ret = FUNC0(EINVAL);
        goto end;
    }

    if (bsf_options_str) {
        ret = FUNC3(&bsf_options, bsf_options_str, "=", ":", 0);
        if (ret < 0)
            goto end;
    }

    ret = FUNC1(bsf_lst, bsf_name, &bsf_options);

    FUNC2(&bsf_options);
end:
    FUNC4(buf);
    return ret;
}