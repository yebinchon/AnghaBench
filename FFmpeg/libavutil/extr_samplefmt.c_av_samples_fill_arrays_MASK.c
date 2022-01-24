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
 int FUNC0 (int) ; 
 int FUNC1 (int*,int,int,int,int) ; 

int FUNC2(uint8_t **audio_data, int *linesize,
                           const uint8_t *buf, int nb_channels, int nb_samples,
                           enum AVSampleFormat sample_fmt, int align)
{
    int ch, planar, buf_size, line_size;

    planar   = FUNC0(sample_fmt);
    buf_size = FUNC1(&line_size, nb_channels, nb_samples,
                                          sample_fmt, align);
    if (buf_size < 0)
        return buf_size;

    audio_data[0] = (uint8_t *)buf;
    for (ch = 1; planar && ch < nb_channels; ch++)
        audio_data[ch] = audio_data[ch-1] + line_size;

    if (linesize)
        *linesize = line_size;

    return buf_size;
}