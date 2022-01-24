#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_21__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_20__ {int nb_frames; TYPE_1__* codecpar; int /*<<< orphan*/  time_base; int /*<<< orphan*/  avg_frame_rate; } ;
struct TYPE_19__ {int nb_audio_tracks; int acompression; int aformat; int nb_video_tracks; } ;
struct TYPE_18__ {int sample_rate; int channels; int bits_per_coded_sample; void* codec_type; void* codec_id; void* height; void* width; scalar_t__ codec_tag; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ MvContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AUDIO_FORMAT_SIGNED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 void* AVMEDIA_TYPE_AUDIO ; 
 void* AVMEDIA_TYPE_VIDEO ; 
 void* AV_CODEC_ID_MVC1 ; 
 void* AV_CODEC_ID_NONE ; 
 void* AV_CODEC_ID_PCM_S16BE ; 
 void* AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_ARGB ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  parse_audio_var ; 
 int /*<<< orphan*/  parse_global_var ; 
 int /*<<< orphan*/  parse_video_var ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC12 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_4__*,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*,int) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *avctx)
{
    MvContext *mv = avctx->priv_data;
    AVIOContext *pb = avctx->pb;
    AVStream *ast = NULL, *vst = NULL; //initialization to suppress warning
    int version, i;
    int ret;

    FUNC8(pb, 4);

    version = FUNC6(pb);
    if (version == 2) {
        uint64_t timestamp;
        int v;
        FUNC8(pb, 22);

        /* allocate audio track first to prevent unnecessary seeking
         * (audio packet always precede video packet for a given frame) */
        ast = FUNC4(avctx, NULL);
        if (!ast)
            return FUNC0(ENOMEM);

        vst = FUNC4(avctx, NULL);
        if (!vst)
            return FUNC0(ENOMEM);
        FUNC10(vst, 64, 1, 15);
        vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        vst->avg_frame_rate    = FUNC2(vst->time_base);
        vst->nb_frames         = FUNC7(pb);
        v = FUNC7(pb);
        switch (v) {
        case 1:
            vst->codecpar->codec_id = AV_CODEC_ID_MVC1;
            break;
        case 2:
            vst->codecpar->format = AV_PIX_FMT_ARGB;
            vst->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
            break;
        default:
            FUNC9(avctx, "Video compression %i", v);
            break;
        }
        vst->codecpar->codec_tag = 0;
        vst->codecpar->width     = FUNC7(pb);
        vst->codecpar->height    = FUNC7(pb);
        FUNC8(pb, 12);

        ast->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
        ast->nb_frames          = vst->nb_frames;
        ast->codecpar->sample_rate = FUNC7(pb);
        if (ast->codecpar->sample_rate <= 0) {
            FUNC3(avctx, AV_LOG_ERROR, "Invalid sample rate %d\n", ast->codecpar->sample_rate);
            return AVERROR_INVALIDDATA;
        }
        FUNC10(ast, 33, 1, ast->codecpar->sample_rate);
        if (FUNC13(avctx, ast, FUNC7(pb)) < 0)
            return AVERROR_INVALIDDATA;

        v = FUNC7(pb);
        if (v == AUDIO_FORMAT_SIGNED) {
            ast->codecpar->codec_id = AV_CODEC_ID_PCM_S16BE;
        } else {
            FUNC9(avctx, "Audio compression (format %i)", v);
        }

        FUNC8(pb, 12);
        FUNC14(avctx, "title", 0x80);
        FUNC14(avctx, "comment", 0x100);
        FUNC8(pb, 0x80);

        timestamp = 0;
        for (i = 0; i < vst->nb_frames; i++) {
            uint32_t pos   = FUNC7(pb);
            uint32_t asize = FUNC7(pb);
            uint32_t vsize = FUNC7(pb);
            if (FUNC5(pb))
                return AVERROR_INVALIDDATA;
            FUNC8(pb, 8);
            FUNC1(ast, pos, timestamp, asize, 0, AVINDEX_KEYFRAME);
            FUNC1(vst, pos + asize, i, vsize, 0, AVINDEX_KEYFRAME);
            timestamp += asize / (ast->codecpar->channels * 2);
        }
    } else if (!version && FUNC6(pb) == 3) {
        FUNC8(pb, 4);

        if ((ret = FUNC12(avctx, NULL, parse_global_var)) < 0)
            return ret;

        if (mv->nb_audio_tracks > 1) {
            FUNC9(avctx, "Multiple audio streams support");
            return AVERROR_PATCHWELCOME;
        } else if (mv->nb_audio_tracks) {
            ast = FUNC4(avctx, NULL);
            if (!ast)
                return FUNC0(ENOMEM);
            ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            if ((FUNC12(avctx, ast, parse_audio_var)) < 0)
                return ret;
            if (mv->acompression == 100 &&
                mv->aformat == AUDIO_FORMAT_SIGNED &&
                ast->codecpar->bits_per_coded_sample == 16) {
                ast->codecpar->codec_id = AV_CODEC_ID_PCM_S16BE;
            } else {
                FUNC9(avctx,
                                      "Audio compression %i (format %i, sr %i)",
                                      mv->acompression, mv->aformat,
                                      ast->codecpar->bits_per_coded_sample);
                ast->codecpar->codec_id = AV_CODEC_ID_NONE;
            }
            if (ast->codecpar->channels <= 0) {
                FUNC3(avctx, AV_LOG_ERROR, "No valid channel count found.\n");
                return AVERROR_INVALIDDATA;
            }
        }

        if (mv->nb_video_tracks > 1) {
            FUNC9(avctx, "Multiple video streams support");
            return AVERROR_PATCHWELCOME;
        } else if (mv->nb_video_tracks) {
            vst = FUNC4(avctx, NULL);
            if (!vst)
                return FUNC0(ENOMEM);
            vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
            if ((ret = FUNC12(avctx, vst, parse_video_var))<0)
                return ret;
        }

        if (mv->nb_audio_tracks)
            FUNC11(pb, ast);

        if (mv->nb_video_tracks)
            FUNC11(pb, vst);
    } else {
        FUNC9(avctx, "Version %i", version);
        return AVERROR_PATCHWELCOME;
    }

    return 0;
}