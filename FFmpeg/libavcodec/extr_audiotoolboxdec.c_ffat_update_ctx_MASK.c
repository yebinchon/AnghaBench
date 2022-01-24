#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  format ;
typedef  int UInt32 ;
struct TYPE_16__ {int mChannelFlags; int /*<<< orphan*/  mChannelLabel; } ;
struct TYPE_15__ {int* channel_map; int /*<<< orphan*/  converter; } ;
struct TYPE_14__ {int channel_layout; int frame_size; int /*<<< orphan*/  channels; scalar_t__ sample_rate; TYPE_4__* priv_data; } ;
struct TYPE_13__ {int mFramesPerPacket; int mNumberChannelDescriptions; TYPE_5__* mChannelDescriptions; int /*<<< orphan*/  mChannelsPerFrame; scalar_t__ mSampleRate; } ;
typedef  TYPE_1__ AudioStreamBasicDescription ;
typedef  TYPE_1__ AudioChannelLayout ;
typedef  int /*<<< orphan*/  AudioChannelDescription ;
typedef  TYPE_3__ AVCodecContext ;
typedef  TYPE_4__ ATDecodeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  ffat_compare_channel_descriptions ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kAudioConverterCurrentInputStreamDescription ; 
 int /*<<< orphan*/  kAudioConverterCurrentOutputStreamDescription ; 
 int /*<<< orphan*/  kAudioConverterOutputChannelLayout ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx)
{
    ATDecodeContext *at = avctx->priv_data;
    AudioStreamBasicDescription format;
    UInt32 size = sizeof(format);
    if (!FUNC1(at->converter,
                                   kAudioConverterCurrentInputStreamDescription,
                                   &size, &format)) {
        if (format.mSampleRate)
            avctx->sample_rate = format.mSampleRate;
        avctx->channels = format.mChannelsPerFrame;
        avctx->channel_layout = FUNC5(avctx->channels);
        avctx->frame_size = format.mFramesPerPacket;
    }

    if (!FUNC1(at->converter,
                                   kAudioConverterCurrentOutputStreamDescription,
                                   &size, &format)) {
        format.mSampleRate = avctx->sample_rate;
        format.mChannelsPerFrame = avctx->channels;
        FUNC3(at->converter,
                                  kAudioConverterCurrentOutputStreamDescription,
                                  size, &format);
    }

    if (!FUNC2(at->converter, kAudioConverterOutputChannelLayout,
                                       &size, NULL) && size) {
        AudioChannelLayout *layout = FUNC6(size);
        uint64_t layout_mask = 0;
        int i;
        if (!layout)
            return FUNC0(ENOMEM);
        FUNC1(at->converter, kAudioConverterOutputChannelLayout,
                                  &size, layout);
        if (!(layout = FUNC7(layout, &size)))
            return FUNC0(ENOMEM);
        for (i = 0; i < layout->mNumberChannelDescriptions; i++) {
            int id = FUNC8(layout->mChannelDescriptions[i].mChannelLabel);
            if (id < 0)
                goto done;
            if (layout_mask & (1 << id))
                goto done;
            layout_mask |= 1 << id;
            layout->mChannelDescriptions[i].mChannelFlags = i; // Abusing flags as index
        }
        avctx->channel_layout = layout_mask;
        FUNC9(layout->mChannelDescriptions, layout->mNumberChannelDescriptions,
              sizeof(AudioChannelDescription), &ffat_compare_channel_descriptions);
        for (i = 0; i < layout->mNumberChannelDescriptions; i++)
            at->channel_map[i] = layout->mChannelDescriptions[i].mChannelFlags;
done:
        FUNC4(layout);
    }

    if (!avctx->frame_size)
        avctx->frame_size = 2048;

    return 0;
}