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
 int AV_SAMPLE_FMT_U8 ; 
 int AV_SAMPLE_FMT_U8P ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

int FUNC3(uint8_t **audio_data, int offset, int nb_samples,
                           int nb_channels, enum AVSampleFormat sample_fmt)
{
    int planar      = FUNC1(sample_fmt);
    int planes      = planar ? nb_channels : 1;
    int block_align = FUNC0(sample_fmt) * (planar ? 1 : nb_channels);
    int data_size   = nb_samples * block_align;
    int fill_char   = (sample_fmt == AV_SAMPLE_FMT_U8 ||
                     sample_fmt == AV_SAMPLE_FMT_U8P) ? 0x80 : 0x00;
    int i;

    offset *= block_align;

    for (i = 0; i < planes; i++)
        FUNC2(audio_data[i] + offset, fill_char, data_size);

    return 0;
}