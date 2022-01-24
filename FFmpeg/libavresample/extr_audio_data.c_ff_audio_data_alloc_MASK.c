#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_7__ {int sample_size; int planes; int stride; int sample_fmt; int channels; int allocated_channels; int allow_realloc; char const* name; scalar_t__ read_only; int /*<<< orphan*/ * class; scalar_t__ is_planar; } ;
typedef  TYPE_1__ AudioData ;

/* Variables and functions */
 int AVRESAMPLE_MAX_CHANNELS ; 
 int /*<<< orphan*/  audio_data_class ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int,int) ; 

AudioData *FUNC6(int channels, int nb_samples,
                               enum AVSampleFormat sample_fmt, const char *name)
{
    AudioData *a;
    int ret;

    if (channels < 1 || channels > AVRESAMPLE_MAX_CHANNELS)
        return NULL;

    a = FUNC2(sizeof(*a));
    if (!a)
        return NULL;

    a->sample_size = FUNC1(sample_fmt);
    if (!a->sample_size) {
        FUNC0(a);
        return NULL;
    }
    a->is_planar = FUNC5(sample_fmt, channels);
    a->planes    = a->is_planar ? channels : 1;
    a->stride    = a->sample_size * (a->is_planar ? 1 : channels);

    a->class              = &audio_data_class;
    a->sample_fmt         = sample_fmt;
    a->channels           = channels;
    a->allocated_channels = channels;
    a->read_only          = 0;
    a->allow_realloc      = 1;
    a->name               = name ? name : "{no name}";

    if (nb_samples > 0) {
        ret = FUNC4(a, nb_samples);
        if (ret < 0) {
            FUNC0(a);
            return NULL;
        }
        return a;
    } else {
        FUNC3(a);
        return a;
    }
}