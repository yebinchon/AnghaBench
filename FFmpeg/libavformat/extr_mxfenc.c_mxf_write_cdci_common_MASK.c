#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__* UID ;
struct TYPE_16__ {int /*<<< orphan*/ * oformat; int /*<<< orphan*/ * pb; } ;
struct TYPE_15__ {TYPE_3__* codecpar; TYPE_4__* priv_data; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_14__ {int interlaced; int component_depth; int h_chroma_sub_sample; int v_chroma_sub_sample; int color_siting; int signal_standard; int field_dominance; int /*<<< orphan*/  avc_intra; scalar_t__** codec_ul; TYPE_1__ aspect_ratio; } ;
struct TYPE_13__ {int height; scalar_t__ codec_id; int width; scalar_t__ color_range; int /*<<< orphan*/  color_trc; } ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ MXFStreamContext ;
typedef  TYPE_5__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVCOL_RANGE_MPEG ; 
 scalar_t__ AVCOL_RANGE_UNSPECIFIED ; 
 int /*<<< orphan*/  AVCSubDescriptor ; 
 scalar_t__ AV_CODEC_ID_DVVIDEO ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  ff_mxf_d10_muxer ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*,scalar_t__* const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC9(AVFormatContext *s, AVStream *st, const UID key)
{
    MXFStreamContext *sc = st->priv_data;
    AVIOContext *pb = s->pb;
    int stored_width = 0;
    int stored_height = (st->codecpar->height+15)/16*16;
    int display_height;
    int f1, f2;
    UID transfer_ul = {0};
    int64_t pos = FUNC5(s, st, key);

    FUNC4(transfer_ul, st->codecpar->color_trc);

    if (st->codecpar->codec_id == AV_CODEC_ID_DVVIDEO) {
        if (st->codecpar->height == 1080)
            stored_width = 1920;
        else if (st->codecpar->height == 720)
            stored_width = 1280;
    }
    if (!stored_width)
        stored_width = (st->codecpar->width+15)/16*16;

    FUNC6(pb, 4, 0x3203);
    FUNC2(pb, stored_width);

    FUNC6(pb, 4, 0x3202);
    FUNC2(pb, stored_height>>sc->interlaced);

    if (s->oformat == &ff_mxf_d10_muxer) {
        //Stored F2 Offset
        FUNC6(pb, 4, 0x3216);
        FUNC2(pb, 0);

        //Image Start Offset
        FUNC6(pb, 4, 0x3213);
        FUNC2(pb, 0);

        //Image End Offset
        FUNC6(pb, 4, 0x3214);
        FUNC2(pb, 0);
    }

    //Sampled width
    FUNC6(pb, 4, 0x3205);
    FUNC2(pb, stored_width);

    //Samples height
    FUNC6(pb, 4, 0x3204);
    FUNC2(pb, st->codecpar->height>>sc->interlaced);

    //Sampled X Offset
    FUNC6(pb, 4, 0x3206);
    FUNC2(pb, 0);

    //Sampled Y Offset
    FUNC6(pb, 4, 0x3207);
    FUNC2(pb, 0);

    FUNC6(pb, 4, 0x3209);
    FUNC2(pb, stored_width);

    if (st->codecpar->height == 608) // PAL + VBI
        display_height = 576;
    else if (st->codecpar->height == 512)  // NTSC + VBI
        display_height = 486;
    else
        display_height = st->codecpar->height;

    FUNC6(pb, 4, 0x3208);
    FUNC2(pb, display_height>>sc->interlaced);

    // display X offset
    FUNC6(pb, 4, 0x320A);
    FUNC2(pb, 0);

    // display Y offset
    FUNC6(pb, 4, 0x320B);
    FUNC2(pb, (st->codecpar->height - display_height)>>sc->interlaced);

    if (sc->interlaced) {
        //Display F2 Offset
        FUNC6(pb, 4, 0x3217);
        FUNC2(pb, -((st->codecpar->height - display_height)&1));
    }

    // component depth
    FUNC6(pb, 4, 0x3301);
    FUNC2(pb, sc->component_depth);

    // horizontal subsampling
    FUNC6(pb, 4, 0x3302);
    FUNC2(pb, sc->h_chroma_sub_sample);

    // vertical subsampling
    FUNC6(pb, 4, 0x3308);
    FUNC2(pb, sc->v_chroma_sub_sample);

    // color siting
    FUNC6(pb, 1, 0x3303);
    FUNC0(pb, sc->color_siting);

    // Padding Bits
    FUNC6(pb, 2, 0x3307);
    FUNC1(pb, 0);

    if (st->codecpar->color_range != AVCOL_RANGE_UNSPECIFIED) {
        int black = 0,
            white = (1<<sc->component_depth) - 1,
            color = (1<<sc->component_depth) - 1;
        if (st->codecpar->color_range == AVCOL_RANGE_MPEG) {
            black = 1   << (sc->component_depth - 4);
            white = 235 << (sc->component_depth - 8);
            color = (14 << (sc->component_depth - 4)) + 1;
        }
        FUNC6(pb, 4, 0x3304);
        FUNC2(pb, black);
        FUNC6(pb, 4, 0x3305);
        FUNC2(pb, white);
        FUNC6(pb, 4, 0x3306);
        FUNC2(pb, color);
    }

    if (sc->signal_standard) {
        FUNC6(pb, 1, 0x3215);
        FUNC0(pb, sc->signal_standard);
    }

    // frame layout
    FUNC6(pb, 1, 0x320C);
    FUNC0(pb, sc->interlaced);

    // video line map
    switch (st->codecpar->height) {
    case  576: f1 = 23; f2 = st->codecpar->codec_id == AV_CODEC_ID_DVVIDEO ? 335 : 336; break;
    case  608: f1 =  7; f2 = 320; break;
    case  480: f1 = 20; f2 = st->codecpar->codec_id == AV_CODEC_ID_DVVIDEO ? 285 : 283; break;
    case  512: f1 =  7; f2 = 270; break;
    case  720: f1 = 26; f2 =   0; break; // progressive
    case 1080: f1 = 21; f2 = 584; break;
    default:   f1 =  0; f2 =   0; break;
    }

    if (!sc->interlaced && f2) {
        f2  = 0;
        f1 *= 2;
    }


    FUNC6(pb, 16, 0x320D);
    FUNC2(pb, 2);
    FUNC2(pb, 4);
    FUNC2(pb, f1);
    FUNC2(pb, f2);

    FUNC6(pb, 8, 0x320E);
    FUNC2(pb, sc->aspect_ratio.num);
    FUNC2(pb, sc->aspect_ratio.den);

    //Transfer characteristic
    if (transfer_ul[0]) {
        FUNC6(pb, 16, 0x3210);
        FUNC3(pb, transfer_ul, 16);
    };

    FUNC6(pb, 16, 0x3201);
    FUNC3(pb, *sc->codec_ul, 16);

    if (sc->interlaced && sc->field_dominance) {
        FUNC6(pb, 1, 0x3212);
        FUNC0(pb, sc->field_dominance);
    }

    if (st->codecpar->codec_id == AV_CODEC_ID_H264 && !sc->avc_intra) {
        // write avc sub descriptor ref
        FUNC6(pb, 8 + 16, 0x8100);
        FUNC7(pb, 1);
        FUNC8(pb, AVCSubDescriptor, 0);
    }

    return pos;
}