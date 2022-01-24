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
typedef  int int64_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 int INT_MAX ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

int FUNC4(int *linesize, int nb_channels, int nb_samples,
                               enum AVSampleFormat sample_fmt, int align)
{
    int line_size;
    int sample_size = FUNC2(sample_fmt);
    int planar      = FUNC3(sample_fmt);

    /* validate parameter ranges */
    if (!sample_size || nb_samples <= 0 || nb_channels <= 0)
        return FUNC0(EINVAL);

    /* auto-select alignment if not specified */
    if (!align) {
        if (nb_samples > INT_MAX - 31)
            return FUNC0(EINVAL);
        align = 1;
        nb_samples = FUNC1(nb_samples, 32);
    }

    /* check for integer overflow */
    if (nb_channels > INT_MAX / align ||
        (int64_t)nb_channels * nb_samples > (INT_MAX - (align * nb_channels)) / sample_size)
        return FUNC0(EINVAL);

    line_size = planar ? FUNC1(nb_samples * sample_size,               align) :
                         FUNC1(nb_samples * sample_size * nb_channels, align);
    if (linesize)
        *linesize = line_size;

    return planar ? line_size * nb_channels : line_size;
}