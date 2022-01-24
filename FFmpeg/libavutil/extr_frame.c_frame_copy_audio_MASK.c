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
struct TYPE_5__ {int channels; scalar_t__ nb_samples; scalar_t__ channel_layout; int /*<<< orphan*/  format; int /*<<< orphan*/ * extended_data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFrame *dst, const AVFrame *src)
{
    int planar   = FUNC2(dst->format);
    int channels = dst->channels;
    int planes   = planar ? channels : 1;
    int i;

    if (dst->nb_samples     != src->nb_samples ||
        dst->channels       != src->channels ||
        dst->channel_layout != src->channel_layout)
        return FUNC0(EINVAL);

    FUNC1(src);

    for (i = 0; i < planes; i++)
        if (!dst->extended_data[i] || !src->extended_data[i])
            return FUNC0(EINVAL);

    FUNC3(dst->extended_data, src->extended_data, 0, 0,
                    dst->nb_samples, channels, dst->format);

    return 0;
}