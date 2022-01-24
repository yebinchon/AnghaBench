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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_5__ {int channels; int sample_fmt; int sample_size; int nb_buffers; int allocated_samples; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ AVAudioFifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int*,int,int,int,int) ; 

AVAudioFifo *FUNC6(enum AVSampleFormat sample_fmt, int channels,
                                 int nb_samples)
{
    AVAudioFifo *af;
    int buf_size, i;

    /* get channel buffer size (also validates parameters) */
    if (FUNC5(&buf_size, channels, nb_samples, sample_fmt, 1) < 0)
        return NULL;

    af = FUNC2(sizeof(*af));
    if (!af)
        return NULL;

    af->channels    = channels;
    af->sample_fmt  = sample_fmt;
    af->sample_size = buf_size / nb_samples;
    af->nb_buffers  = FUNC4(sample_fmt) ? channels : 1;

    af->buf = FUNC3(af->nb_buffers, sizeof(*af->buf));
    if (!af->buf)
        goto error;

    for (i = 0; i < af->nb_buffers; i++) {
        af->buf[i] = FUNC1(buf_size);
        if (!af->buf[i])
            goto error;
    }
    af->allocated_samples = nb_samples;

    return af;

error:
    FUNC0(af);
    return NULL;
}