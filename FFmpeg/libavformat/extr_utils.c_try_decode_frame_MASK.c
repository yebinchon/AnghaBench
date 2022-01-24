#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_15__ ;

/* Type definitions */
typedef  enum AVDiscard { ____Placeholder_AVDiscard } AVDiscard ;
struct TYPE_30__ {int codec_id; int skip_frame; scalar_t__ codec_type; TYPE_15__* codec; } ;
struct TYPE_29__ {char* codec_whitelist; } ;
struct TYPE_28__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_27__ {int /*<<< orphan*/  nb_decoded_frames; int /*<<< orphan*/  codec_info_nb_frames; TYPE_3__* info; TYPE_2__* codecpar; TYPE_1__* internal; } ;
struct TYPE_26__ {int found_decoder; } ;
struct TYPE_25__ {int codec_id; } ;
struct TYPE_24__ {TYPE_7__* avctx; } ;
struct TYPE_23__ {int capabilities; } ;
typedef  int /*<<< orphan*/  AVSubtitle ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_6__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_7__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int AVDISCARD_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int AV_CODEC_CAP_CHANNEL_CONF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (TYPE_7__*,int /*<<< orphan*/ *,int*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int FUNC7 (TYPE_7__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int FUNC8 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_7__*,TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_15__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s, AVStream *st,
                            const AVPacket *avpkt, AVDictionary **options)
{
    AVCodecContext *avctx = st->internal->avctx;
    const AVCodec *codec;
    int got_picture = 1, ret = 0;
    AVFrame *frame = FUNC3();
    AVSubtitle subtitle;
    AVPacket pkt = *avpkt;
    int do_skip_frame = 0;
    enum AVDiscard skip_frame;

    if (!frame)
        return FUNC0(ENOMEM);

    if (!FUNC6(avctx) &&
        st->info->found_decoder <= 0 &&
        (st->codecpar->codec_id != -st->info->found_decoder || !st->codecpar->codec_id)) {
        AVDictionary *thread_opt = NULL;

        codec = FUNC11(s, st, st->codecpar->codec_id);

        if (!codec) {
            st->info->found_decoder = -st->codecpar->codec_id;
            ret                     = -1;
            goto fail;
        }

        /* Force thread count to 1 since the H.264 decoder will not extract
         * SPS and PPS to extradata during multi-threaded decoding. */
        FUNC2(options ? options : &thread_opt, "threads", "1", 0);
        if (s->codec_whitelist)
            FUNC2(options ? options : &thread_opt, "codec_whitelist", s->codec_whitelist, 0);
        ret = FUNC7(avctx, codec, options ? options : &thread_opt);
        if (!options)
            FUNC1(&thread_opt);
        if (ret < 0) {
            st->info->found_decoder = -avctx->codec_id;
            goto fail;
        }
        st->info->found_decoder = 1;
    } else if (!st->info->found_decoder)
        st->info->found_decoder = 1;

    if (st->info->found_decoder < 0) {
        ret = -1;
        goto fail;
    }

    if (FUNC10(avctx->codec)) {
        do_skip_frame = 1;
        skip_frame = avctx->skip_frame;
        avctx->skip_frame = AVDISCARD_ALL;
    }

    while ((pkt.size > 0 || (!pkt.data && got_picture)) &&
           ret >= 0 &&
           (!FUNC12(st, NULL) || !FUNC13(st) ||
            (!st->codec_info_nb_frames &&
             (avctx->codec->capabilities & AV_CODEC_CAP_CHANNEL_CONF)))) {
        got_picture = 0;
        if (avctx->codec_type == AVMEDIA_TYPE_VIDEO ||
            avctx->codec_type == AVMEDIA_TYPE_AUDIO) {
            ret = FUNC9(avctx, &pkt);
            if (ret < 0 && ret != FUNC0(EAGAIN) && ret != AVERROR_EOF)
                break;
            if (ret >= 0)
                pkt.size = 0;
            ret = FUNC8(avctx, frame);
            if (ret >= 0)
                got_picture = 1;
            if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
                ret = 0;
        } else if (avctx->codec_type == AVMEDIA_TYPE_SUBTITLE) {
            ret = FUNC5(avctx, &subtitle,
                                           &got_picture, &pkt);
            if (ret >= 0)
                pkt.size = 0;
        }
        if (ret >= 0) {
            if (got_picture)
                st->nb_decoded_frames++;
            ret       = got_picture;
        }
    }

    if (!pkt.data && !got_picture)
        ret = -1;

fail:
    if (do_skip_frame) {
        avctx->skip_frame = skip_frame;
    }

    FUNC4(&frame);
    return ret;
}