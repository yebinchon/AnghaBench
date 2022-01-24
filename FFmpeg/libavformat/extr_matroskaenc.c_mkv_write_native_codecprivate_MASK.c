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
struct TYPE_6__ {int codec_id; int extradata_size; int /*<<< orphan*/  extradata; int /*<<< orphan*/  codec_tag; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
#define  AV_CODEC_ID_AAC 136 
#define  AV_CODEC_ID_ALAC 135 
#define  AV_CODEC_ID_AV1 134 
#define  AV_CODEC_ID_FLAC 133 
#define  AV_CODEC_ID_H264 132 
#define  AV_CODEC_ID_HEVC 131 
 int AV_CODEC_ID_PRORES ; 
#define  AV_CODEC_ID_THEORA 130 
 int AV_CODEC_ID_TTA ; 
#define  AV_CODEC_ID_VORBIS 129 
#define  AV_CODEC_ID_WAVPACK 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  MAX_PCE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_codec_movvideo_tags ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVIOContext *pb,
                                         AVCodecParameters *par,
                                         AVIOContext *dyn_cp)
{
    switch (par->codec_id) {
    case AV_CODEC_ID_VORBIS:
    case AV_CODEC_ID_THEORA:
        return FUNC10(s, dyn_cp, par);
    case AV_CODEC_ID_FLAC:
        return FUNC8(s, dyn_cp, par);
    case AV_CODEC_ID_WAVPACK:
        return FUNC9(dyn_cp, par);
    case AV_CODEC_ID_H264:
        return FUNC5(dyn_cp, par->extradata,
                                  par->extradata_size);
    case AV_CODEC_ID_HEVC:
        FUNC6(dyn_cp, par->extradata,
                           par->extradata_size, 0);
        return 0;
    case AV_CODEC_ID_AV1:
        if (par->extradata_size)
            return FUNC4(dyn_cp, par->extradata,
                                      par->extradata_size);
        else
            FUNC7(pb, 4 + 3);
        break;
    case AV_CODEC_ID_ALAC:
        if (par->extradata_size < 36) {
            FUNC0(s, AV_LOG_ERROR,
                   "Invalid extradata found, ALAC expects a 36-byte "
                   "QuickTime atom.");
            return AVERROR_INVALIDDATA;
        } else
            FUNC2(dyn_cp, par->extradata + 12,
                       par->extradata_size - 12);
        break;
    case AV_CODEC_ID_AAC:
        if (par->extradata_size)
            FUNC2(dyn_cp, par->extradata, par->extradata_size);
        else
            FUNC7(pb, MAX_PCE_SIZE + 2 + 4);
        break;
    default:
        if (par->codec_id == AV_CODEC_ID_PRORES &&
            FUNC3(ff_codec_movvideo_tags, par->codec_tag) == AV_CODEC_ID_PRORES) {
            FUNC1(dyn_cp, par->codec_tag);
        } else if (par->extradata_size && par->codec_id != AV_CODEC_ID_TTA)
            FUNC2(dyn_cp, par->extradata, par->extradata_size);
    }

    return 0;
}