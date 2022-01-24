#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_13__ {scalar_t__ dither_method; } ;
struct TYPE_12__ {int out_fmt; int in_fmt; int channels; int apply_map; int planes; int /*<<< orphan*/  func_type; int /*<<< orphan*/  dc; TYPE_2__* avr; } ;
typedef  TYPE_1__ AudioConvert ;
typedef  TYPE_2__ AVAudioResampleContext ;

/* Variables and functions */
 scalar_t__ ARCH_AARCH64 ; 
 scalar_t__ ARCH_ARM ; 
 scalar_t__ ARCH_X86 ; 
 scalar_t__ AV_RESAMPLE_DITHER_NONE ; 
 scalar_t__ AV_SAMPLE_FMT_S16 ; 
 int /*<<< orphan*/  CONV_FUNC_TYPE_DEINTERLEAVE ; 
 int /*<<< orphan*/  CONV_FUNC_TYPE_FLAT ; 
 int /*<<< orphan*/  CONV_FUNC_TYPE_INTERLEAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,int,int,int) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

AudioConvert *FUNC10(AVAudioResampleContext *avr,
                                     enum AVSampleFormat out_fmt,
                                     enum AVSampleFormat in_fmt,
                                     int channels, int sample_rate,
                                     int apply_map)
{
    AudioConvert *ac;
    int in_planar, out_planar;

    ac = FUNC3(sizeof(*ac));
    if (!ac)
        return NULL;

    ac->avr      = avr;
    ac->out_fmt  = out_fmt;
    ac->in_fmt   = in_fmt;
    ac->channels = channels;
    ac->apply_map = apply_map;

    if (avr->dither_method != AV_RESAMPLE_DITHER_NONE          &&
        FUNC2(out_fmt) == AV_SAMPLE_FMT_S16 &&
        FUNC1(in_fmt) > 2) {
        ac->dc = FUNC7(avr, out_fmt, in_fmt, channels, sample_rate,
                                 apply_map);
        if (!ac->dc) {
            FUNC0(ac);
            return NULL;
        }
        return ac;
    }

    in_planar  = FUNC8(in_fmt, channels);
    out_planar = FUNC8(out_fmt, channels);

    if (in_planar == out_planar) {
        ac->func_type = CONV_FUNC_TYPE_FLAT;
        ac->planes    = in_planar ? ac->channels : 1;
    } else if (in_planar)
        ac->func_type = CONV_FUNC_TYPE_INTERLEAVE;
    else
        ac->func_type = CONV_FUNC_TYPE_DEINTERLEAVE;

    FUNC9(ac);

    if (ARCH_AARCH64)
        FUNC4(ac);
    if (ARCH_ARM)
        FUNC5(ac);
    if (ARCH_X86)
        FUNC6(ac);

    return ac;
}