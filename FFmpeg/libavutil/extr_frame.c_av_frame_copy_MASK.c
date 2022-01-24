#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ format; scalar_t__ width; scalar_t__ height; scalar_t__ nb_samples; scalar_t__ channels; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (TYPE_1__*,TYPE_1__ const*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 

int FUNC3(AVFrame *dst, const AVFrame *src)
{
    if (dst->format != src->format || dst->format < 0)
        return FUNC0(EINVAL);

    if (dst->width > 0 && dst->height > 0)
        return FUNC2(dst, src);
    else if (dst->nb_samples > 0 && dst->channels > 0)
        return FUNC1(dst, src);

    return FUNC0(EINVAL);
}