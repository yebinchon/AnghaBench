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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ ** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ***) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ **,int*,int,int,int,int) ; 

int FUNC5(uint8_t ***audio_data, int *linesize, int nb_channels,
                                       int nb_samples, enum AVSampleFormat sample_fmt, int align)
{
    int ret, nb_planes = FUNC3(sample_fmt) ? nb_channels : 1;

    *audio_data = FUNC1(nb_planes, sizeof(**audio_data));
    if (!*audio_data)
        return FUNC0(ENOMEM);
    ret = FUNC4(*audio_data, linesize, nb_channels,
                           nb_samples, sample_fmt, align);
    if (ret < 0)
        FUNC2(audio_data);
    return ret;
}