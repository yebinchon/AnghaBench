#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  filter_context; int /*<<< orphan*/  strength; int /*<<< orphan*/  quality; int /*<<< orphan*/  radius; } ;
struct TYPE_10__ {int /*<<< orphan*/ * chrV; int /*<<< orphan*/  chrH; TYPE_1__* lumV; TYPE_1__* lumH; } ;
struct TYPE_9__ {int length; int /*<<< orphan*/ * coeff; } ;
typedef  TYPE_1__ SwsVector ;
typedef  TYPE_2__ SwsFilter ;
typedef  TYPE_3__ FilterParam ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY8 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned int,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(FilterParam *f, int width, int height, unsigned int flags)
{
    SwsVector *vec;
    SwsFilter sws_filter;

    vec = FUNC3(f->radius, f->quality);

    if (!vec)
        return FUNC0(EINVAL);

    FUNC4(vec, f->strength);
    vec->coeff[vec->length / 2] += 1.0 - f->strength;
    sws_filter.lumH = sws_filter.lumV = vec;
    sws_filter.chrH = *(sws_filter.chrV = NULL);
    f->filter_context = FUNC2(NULL,
                                             width, height, AV_PIX_FMT_GRAY8,
                                             width, height, AV_PIX_FMT_GRAY8,
                                             flags, &sws_filter, NULL, NULL);

    FUNC1(vec);

    if (!f->filter_context)
        return FUNC0(EINVAL);

    return 0;
}