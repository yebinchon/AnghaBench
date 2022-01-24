#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int nb_components; TYPE_1__* comp; } ;
struct TYPE_4__ {int /*<<< orphan*/  depth; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int INT_MAX ; 
 TYPE_2__* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int *min, int *max, enum AVPixelFormat pix_fmt)
{
    const AVPixFmtDescriptor *desc = FUNC3(pix_fmt);
    int i;

    if (!desc || !desc->nb_components) {
        *min = *max = 0;
        return FUNC0(EINVAL);
    }

    *min = INT_MAX, *max = -INT_MAX;
    for (i = 0; i < desc->nb_components; i++) {
        *min = FUNC2(desc->comp[i].depth, *min);
        *max = FUNC1(desc->comp[i].depth, *max);
    }
    return 0;
}