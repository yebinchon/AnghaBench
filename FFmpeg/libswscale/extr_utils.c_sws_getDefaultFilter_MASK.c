#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * chrV; int /*<<< orphan*/ * chrH; int /*<<< orphan*/ * lumV; int /*<<< orphan*/ * lumH; } ;
typedef  int /*<<< orphan*/  SwsVector ;
typedef  TYPE_1__ SwsFilter ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (float,double) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

SwsFilter *FUNC11(float lumaGBlur, float chromaGBlur,
                                float lumaSharpen, float chromaSharpen,
                                float chromaHShift, float chromaVShift,
                                int verbose)
{
    SwsFilter *filter = FUNC1(sizeof(SwsFilter));
    if (!filter)
        return NULL;

    if (lumaGBlur != 0.0) {
        filter->lumH = FUNC5(lumaGBlur, 3.0);
        filter->lumV = FUNC5(lumaGBlur, 3.0);
    } else {
        filter->lumH = FUNC6();
        filter->lumV = FUNC6();
    }

    if (chromaGBlur != 0.0) {
        filter->chrH = FUNC5(chromaGBlur, 3.0);
        filter->chrV = FUNC5(chromaGBlur, 3.0);
    } else {
        filter->chrH = FUNC6();
        filter->chrV = FUNC6();
    }

    if (!filter->lumH || !filter->lumV || !filter->chrH || !filter->chrV)
        goto fail;

    if (chromaSharpen != 0.0) {
        SwsVector *id = FUNC6();
        if (!id)
            goto fail;
        FUNC9(filter->chrH, -chromaSharpen);
        FUNC9(filter->chrV, -chromaSharpen);
        FUNC3(filter->chrH, id);
        FUNC3(filter->chrV, id);
        FUNC4(id);
    }

    if (lumaSharpen != 0.0) {
        SwsVector *id = FUNC6();
        if (!id)
            goto fail;
        FUNC9(filter->lumH, -lumaSharpen);
        FUNC9(filter->lumV, -lumaSharpen);
        FUNC3(filter->lumH, id);
        FUNC3(filter->lumV, id);
        FUNC4(id);
    }

    if (chromaHShift != 0.0)
        FUNC10(filter->chrH, (int)(chromaHShift + 0.5));

    if (chromaVShift != 0.0)
        FUNC10(filter->chrV, (int)(chromaVShift + 0.5));

    FUNC7(filter->chrH, 1.0);
    FUNC7(filter->chrV, 1.0);
    FUNC7(filter->lumH, 1.0);
    FUNC7(filter->lumV, 1.0);

    if (FUNC2(filter->chrH) ||
        FUNC2(filter->chrV) ||
        FUNC2(filter->lumH) ||
        FUNC2(filter->lumV))
        goto fail;

    if (verbose)
        FUNC8(filter->chrH, NULL, AV_LOG_DEBUG);
    if (verbose)
        FUNC8(filter->lumH, NULL, AV_LOG_DEBUG);

    return filter;

fail:
    FUNC4(filter->lumH);
    FUNC4(filter->lumV);
    FUNC4(filter->chrH);
    FUNC4(filter->chrV);
    FUNC0(&filter);
    return NULL;
}