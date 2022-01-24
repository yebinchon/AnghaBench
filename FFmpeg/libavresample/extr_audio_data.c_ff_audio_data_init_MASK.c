#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_6__ {int sample_size; int planes; int stride; int allocated_samples; int nb_samples; int sample_fmt; int channels; int allocated_channels; int read_only; char const* name; int samples_align; scalar_t__ allow_realloc; int /*<<< orphan*/ ** data; scalar_t__ is_planar; int /*<<< orphan*/ * class; } ;
typedef  TYPE_1__ AudioData ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVRESAMPLE_MAX_CHANNELS ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  audio_data_class ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC6(AudioData *a, uint8_t * const *src, int plane_size,
                       int channels, int nb_samples,
                       enum AVSampleFormat sample_fmt, int read_only,
                       const char *name)
{
    int p;

    FUNC5(a, 0, sizeof(*a));
    a->class = &audio_data_class;

    if (channels < 1 || channels > AVRESAMPLE_MAX_CHANNELS) {
        FUNC2(a, AV_LOG_ERROR, "invalid channel count: %d\n", channels);
        return FUNC0(EINVAL);
    }

    a->sample_size = FUNC1(sample_fmt);
    if (!a->sample_size) {
        FUNC2(a, AV_LOG_ERROR, "invalid sample format\n");
        return FUNC0(EINVAL);
    }
    a->is_planar = FUNC4(sample_fmt, channels);
    a->planes    = a->is_planar ? channels : 1;
    a->stride    = a->sample_size * (a->is_planar ? 1 : channels);

    for (p = 0; p < (a->is_planar ? channels : 1); p++) {
        if (!src[p]) {
            FUNC2(a, AV_LOG_ERROR, "invalid NULL pointer for src[%d]\n", p);
            return FUNC0(EINVAL);
        }
        a->data[p] = src[p];
    }
    a->allocated_samples  = nb_samples * !read_only;
    a->nb_samples         = nb_samples;
    a->sample_fmt         = sample_fmt;
    a->channels           = channels;
    a->allocated_channels = channels;
    a->read_only          = read_only;
    a->allow_realloc      = 0;
    a->name               = name ? name : "{no name}";

    FUNC3(a);
    a->samples_align = plane_size / a->stride;

    return 0;
}