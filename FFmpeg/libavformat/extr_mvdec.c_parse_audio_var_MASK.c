#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int nb_frames; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int aformat; int acompression; } ;
struct TYPE_11__ {int sample_rate; int bits_per_coded_sample; } ;
typedef  TYPE_2__ MvContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int,int) ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char const*,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *avctx, AVStream *st,
                           const char *name, int size)
{
    MvContext *mv = avctx->priv_data;
    AVIOContext *pb = avctx->pb;
    if (!FUNC2(name, "__DIR_COUNT")) {
        st->nb_frames = FUNC3(pb, size);
    } else if (!FUNC2(name, "AUDIO_FORMAT")) {
        mv->aformat = FUNC3(pb, size);
    } else if (!FUNC2(name, "COMPRESSION")) {
        mv->acompression = FUNC3(pb, size);
    } else if (!FUNC2(name, "DEFAULT_VOL")) {
        FUNC4(avctx, name, size);
    } else if (!FUNC2(name, "NUM_CHANNELS")) {
        return FUNC1(avctx, st, FUNC3(pb, size));
    } else if (!FUNC2(name, "SAMPLE_RATE")) {
        st->codecpar->sample_rate = FUNC3(pb, size);
        FUNC0(st, 33, 1, st->codecpar->sample_rate);
    } else if (!FUNC2(name, "SAMPLE_WIDTH")) {
        st->codecpar->bits_per_coded_sample = FUNC3(pb, size) * 8;
    } else
        return AVERROR_INVALIDDATA;

    return 0;
}