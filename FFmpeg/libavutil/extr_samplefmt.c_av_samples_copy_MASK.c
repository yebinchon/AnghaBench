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
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int) ; 

int FUNC4(uint8_t **dst, uint8_t * const *src, int dst_offset,
                    int src_offset, int nb_samples, int nb_channels,
                    enum AVSampleFormat sample_fmt)
{
    int planar      = FUNC1(sample_fmt);
    int planes      = planar ? nb_channels : 1;
    int block_align = FUNC0(sample_fmt) * (planar ? 1 : nb_channels);
    int data_size   = nb_samples * block_align;
    int i;

    dst_offset *= block_align;
    src_offset *= block_align;

    if((dst[0] < src[0] ? src[0] - dst[0] : dst[0] - src[0]) >= data_size) {
        for (i = 0; i < planes; i++)
            FUNC2(dst[i] + dst_offset, src[i] + src_offset, data_size);
    } else {
        for (i = 0; i < planes; i++)
            FUNC3(dst[i] + dst_offset, src[i] + src_offset, data_size);
    }

    return 0;
}