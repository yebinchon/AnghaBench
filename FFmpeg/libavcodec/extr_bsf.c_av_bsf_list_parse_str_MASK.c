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
typedef  int /*<<< orphan*/  AVBSFList ;
typedef  int /*<<< orphan*/  AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char*,char*,char**) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *) ; 

int FUNC9(const char *str, AVBSFContext **bsf_lst)
{
    AVBSFList *lst;
    char *bsf_str, *buf, *dup, *saveptr;
    int ret;

    if (!str)
        return FUNC1(bsf_lst);

    lst = FUNC2();
    if (!lst)
        return FUNC0(ENOMEM);

    if (!(dup = buf = FUNC6(str))) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    while (1) {
        bsf_str = FUNC7(buf, ",", &saveptr);
        if (!bsf_str)
            break;

        ret = FUNC8(bsf_str, lst);
        if (ret < 0)
            goto end;

        buf = NULL;
    }

    ret = FUNC3(&lst, bsf_lst);
end:
    if (ret < 0)
        FUNC4(&lst);
    FUNC5(dup);
    return ret;
}