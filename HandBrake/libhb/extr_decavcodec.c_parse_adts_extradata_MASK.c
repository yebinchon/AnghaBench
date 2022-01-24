#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_18__ {scalar_t__ length; int /*<<< orphan*/  bytes; } ;
struct TYPE_19__ {TYPE_4__ extradata; } ;
struct TYPE_20__ {TYPE_5__ config; } ;
struct TYPE_16__ {int /*<<< orphan*/  samplerate; } ;
struct TYPE_17__ {TYPE_2__ out; } ;
struct TYPE_21__ {TYPE_6__ priv; TYPE_3__ config; } ;
typedef  TYPE_7__ hb_audio_t ;
struct TYPE_15__ {int num; int /*<<< orphan*/  den; } ;
struct TYPE_22__ {int /*<<< orphan*/  par_in; TYPE_1__ time_base_in; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVBitStreamFilter ;
typedef  TYPE_8__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  HB_CONFIG_MAX_SIZE ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__**) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int FUNC5 (TYPE_8__*) ; 
 int FUNC6 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC12( hb_audio_t * audio, AVCodecContext * context,
                                 AVPacket * pkt )
{
    const AVBitStreamFilter * bsf;
    AVBSFContext            * ctx = NULL;
    int                       ret;

    bsf = FUNC4("aac_adtstoasc");
    ret = FUNC2(bsf, &ctx);
    if (ret < 0)
    {
        FUNC10("decavcodec: bitstream filter alloc failure");
        return ret;
    }
    ctx->time_base_in.num = 1;
    ctx->time_base_in.den = audio->config.out.samplerate;
    FUNC9(ctx->par_in, context);
    ret = FUNC5(ctx);
    if (ret < 0)
    {
        FUNC10("decavcodec: bitstream filter init failure");
        FUNC3(&ctx);
        return ret;
    }

    ret = FUNC7(ctx, pkt);
    if (ret < 0)
    {
        FUNC10("decavcodec: av_bsf_send_packet failure");
        FUNC3(&ctx);
        return ret;
    }

    ret = FUNC6(ctx, pkt);
    FUNC3(&ctx);
    if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
    {
        return 0;
    }
    else if (ret < 0)
    {
        if (ret != AVERROR_INVALIDDATA)
        {
            FUNC10("decavcodec: av_bsf_receive_packet failure %x", -ret);
        }
        return ret;
    }

    if (audio->priv.config.extradata.length == 0)
    {
        const uint8_t * extradata;
        int             size;

        extradata = FUNC8(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                            &size);
        if (extradata != NULL && size > 0)
        {
            int len;
            len = FUNC1(size, HB_CONFIG_MAX_SIZE);
            FUNC11(audio->priv.config.extradata.bytes, extradata, len);
            audio->priv.config.extradata.length = len;
        }
    }

    return 0;
}