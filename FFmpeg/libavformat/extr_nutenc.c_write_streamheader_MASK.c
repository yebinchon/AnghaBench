#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int codec_type; int video_delay; int extradata_size; int sample_rate; int channels; int width; int height; int /*<<< orphan*/  extradata; scalar_t__ codec_tag; } ;
struct TYPE_14__ {TYPE_3__* priv_data; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_13__ {TYPE_2__ sample_aspect_ratio; TYPE_6__* codecpar; } ;
struct TYPE_12__ {int time_base; TYPE_1__* stream; } ;
struct TYPE_10__ {int time_base; int msb_pts_shift; int max_pts_distance; } ;
typedef  TYPE_3__ NUTContext ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AVMEDIA_TYPE_AUDIO 130 
#define  AVMEDIA_TYPE_SUBTITLE 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *avctx, AVIOContext *bc,
                              AVStream *st, int i)
{
    NUTContext *nut       = avctx->priv_data;
    AVCodecParameters *par = st->codecpar;

    FUNC5(bc, i);
    switch (par->codec_type) {
    case AVMEDIA_TYPE_VIDEO:    FUNC5(bc, 0); break;
    case AVMEDIA_TYPE_AUDIO:    FUNC5(bc, 1); break;
    case AVMEDIA_TYPE_SUBTITLE: FUNC5(bc, 2); break;
    default:                    FUNC5(bc, 3); break;
    }
    FUNC5(bc, 4);

    if (par->codec_tag) {
        FUNC3(bc, par->codec_tag);
    } else {
        FUNC1(avctx, AV_LOG_ERROR, "No codec tag defined for stream %d\n", i);
        return FUNC0(EINVAL);
    }

    FUNC5(bc, nut->stream[i].time_base - nut->time_base);
    FUNC5(bc, nut->stream[i].msb_pts_shift);
    FUNC5(bc, nut->stream[i].max_pts_distance);
    FUNC5(bc, par->video_delay);
    FUNC2(bc, 0); /* flags: 0x1 - fixed_fps, 0x2 - index_present */

    FUNC5(bc, par->extradata_size);
    FUNC4(bc, par->extradata, par->extradata_size);

    switch (par->codec_type) {
    case AVMEDIA_TYPE_AUDIO:
        FUNC5(bc, par->sample_rate);
        FUNC5(bc, 1);
        FUNC5(bc, par->channels);
        break;
    case AVMEDIA_TYPE_VIDEO:
        FUNC5(bc, par->width);
        FUNC5(bc, par->height);

        if (st->sample_aspect_ratio.num <= 0 ||
            st->sample_aspect_ratio.den <= 0) {
            FUNC5(bc, 0);
            FUNC5(bc, 0);
        } else {
            FUNC5(bc, st->sample_aspect_ratio.num);
            FUNC5(bc, st->sample_aspect_ratio.den);
        }
        FUNC5(bc, 0); /* csp type -- unknown */
        break;
    default:
        break;
    }
    return 0;
}