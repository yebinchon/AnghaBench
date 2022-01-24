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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC6(uint8_t **audio_data, int *linesize, int nb_channels,
                     int nb_samples, enum AVSampleFormat sample_fmt, int align)
{
    uint8_t *buf;
    int size = FUNC4(NULL, nb_channels, nb_samples,
                                          sample_fmt, align);
    if (size < 0)
        return size;

    buf = FUNC2(size);
    if (!buf)
        return FUNC0(ENOMEM);

    size = FUNC3(audio_data, linesize, buf, nb_channels,
                                  nb_samples, sample_fmt, align);
    if (size < 0) {
        FUNC1(buf);
        return size;
    }

    FUNC5(audio_data, 0, nb_samples, nb_channels, sample_fmt);

    return size;
}