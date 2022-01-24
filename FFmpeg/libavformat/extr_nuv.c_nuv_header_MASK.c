#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int error_recognition; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int index; TYPE_1__* codecpar; void* avg_frame_rate; void* r_frame_rate; void* sample_aspect_ratio; } ;
struct TYPE_15__ {int v_id; int a_id; int /*<<< orphan*/  rtjpg_video; } ;
struct TYPE_14__ {scalar_t__ codec_id; int width; int height; int bits_per_coded_sample; int channels; int sample_rate; int bit_rate; int block_align; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ NUVContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 scalar_t__ AV_CODEC_ID_NUV ; 
 scalar_t__ AV_CODEC_ID_PCM_S16LE ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (double,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*,double) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int,int) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s)
{
    NUVContext *ctx = s->priv_data;
    AVIOContext *pb = s->pb;
    char id_string[12];
    double aspect, fps;
    int is_mythtv, width, height, v_packs, a_packs, ret;
    AVStream *vst = NULL, *ast = NULL;

    FUNC7(pb, id_string, 12);
    is_mythtv = !FUNC13(id_string, "MythTVVideo", 12);
    FUNC10(pb, 5);       // version string
    FUNC10(pb, 3);       // padding
    width  = FUNC8(pb);
    height = FUNC8(pb);
    FUNC8(pb);          // unused, "desiredwidth"
    FUNC8(pb);          // unused, "desiredheight"
    FUNC6(pb);            // 'P' == progressive, 'I' == interlaced
    FUNC10(pb, 3);       // padding
    aspect = FUNC3(FUNC9(pb));
    if (aspect > 0.9999 && aspect < 1.0001)
        aspect = 4.0 / 3.0;
    fps = FUNC3(FUNC9(pb));
    if (fps < 0.0f) {
        if (s->error_recognition & AV_EF_EXPLODE) {
            FUNC4(s, AV_LOG_ERROR, "Invalid frame rate %f\n", fps);
            return AVERROR_INVALIDDATA;
        } else {
            FUNC4(s, AV_LOG_WARNING, "Invalid frame rate %f, setting to 0.\n", fps);
            fps = 0.0f;
        }
    }

    // number of packets per stream type, -1 means unknown, e.g. streaming
    v_packs = FUNC8(pb);
    a_packs = FUNC8(pb);
    FUNC8(pb); // text

    FUNC8(pb); // keyframe distance (?)

    if (v_packs) {
        vst = FUNC5(s, NULL);
        if (!vst)
            return FUNC0(ENOMEM);
        ctx->v_id = vst->index;

        ret = FUNC2(width, height, 0, s);
        if (ret < 0)
            return ret;

        vst->codecpar->codec_type            = AVMEDIA_TYPE_VIDEO;
        vst->codecpar->codec_id              = AV_CODEC_ID_NUV;
        vst->codecpar->width                 = width;
        vst->codecpar->height                = height;
        vst->codecpar->bits_per_coded_sample = 10;
        vst->sample_aspect_ratio          = FUNC1(aspect * height / width,
                                                   10000);
#if FF_API_R_FRAME_RATE
        vst->r_frame_rate =
#endif
        vst->avg_frame_rate = FUNC1(fps, 60000);
        FUNC11(vst, 32, 1, 1000);
    } else
        ctx->v_id = -1;

    if (a_packs) {
        ast = FUNC5(s, NULL);
        if (!ast)
            return FUNC0(ENOMEM);
        ctx->a_id = ast->index;

        ast->codecpar->codec_type            = AVMEDIA_TYPE_AUDIO;
        ast->codecpar->codec_id              = AV_CODEC_ID_PCM_S16LE;
        ast->codecpar->channels              = 2;
        ast->codecpar->channel_layout        = AV_CH_LAYOUT_STEREO;
        ast->codecpar->sample_rate           = 44100;
        ast->codecpar->bit_rate              = 2 * 2 * 44100 * 8;
        ast->codecpar->block_align           = 2 * 2;
        ast->codecpar->bits_per_coded_sample = 16;
        FUNC11(ast, 32, 1, 1000);
    } else
        ctx->a_id = -1;

    if ((ret = FUNC12(s, pb, vst, ast, is_mythtv)) < 0)
        return ret;

    ctx->rtjpg_video = vst && vst->codecpar->codec_id == AV_CODEC_ID_NUV;

    return 0;
}