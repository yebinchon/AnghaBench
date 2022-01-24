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
typedef  int /*<<< orphan*/  AVBitStreamFilter ;
typedef  int /*<<< orphan*/  AVBSFList ;
typedef  int /*<<< orphan*/  AVBSFContext ;

/* Variables and functions */
 int AVERROR_BSF_NOT_FOUND ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int FUNC5(AVBSFList *lst, const char *bsf_name, AVDictionary ** options)
{
    int ret;
    const AVBitStreamFilter *filter;
    AVBSFContext *bsf;

    filter = FUNC2(bsf_name);
    if (!filter)
        return AVERROR_BSF_NOT_FOUND;

    ret = FUNC0(filter, &bsf);
    if (ret < 0)
        return ret;

    if (options) {
        ret = FUNC4(bsf, options, AV_OPT_SEARCH_CHILDREN);
        if (ret < 0)
            goto end;
    }

    ret = FUNC3(lst, bsf);

end:
    if (ret < 0)
        FUNC1(&bsf);

    return ret;
}