#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  error_code; int /*<<< orphan*/  writer; TYPE_2__* custom_ptr; } ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_20__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ WebPMemoryWriter ;
struct TYPE_23__ {TYPE_3__* priv_data; } ;
struct TYPE_22__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  data; } ;
struct TYPE_21__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_3__ LibWebPContext ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  WebPMemoryWrite ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVCodecContext *avctx, AVPacket *pkt,
                                const AVFrame *frame, int *got_packet)
{
    LibWebPContext *s  = avctx->priv_data;
    WebPPicture *pic = NULL;
    AVFrame *alt_frame = NULL;
    WebPMemoryWriter mw = { 0 };

    int ret = FUNC9(avctx, s, frame, &alt_frame, &pic);
    if (ret < 0)
        goto end;

    FUNC2(&mw);
    pic->custom_ptr = &mw;
    pic->writer     = WebPMemoryWrite;

    ret = FUNC0(&s->config, pic);
    if (!ret) {
        FUNC6(avctx, AV_LOG_ERROR, "WebPEncode() failed with error: %d\n",
               pic->error_code);
        ret = FUNC8(pic->error_code);
        goto end;
    }

    ret = FUNC7(avctx, pkt, mw.size, mw.size);
    if (ret < 0)
        goto end;
    FUNC11(pkt->data, mw.mem, mw.size);

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

end:
#if (WEBP_ENCODER_ABI_VERSION > 0x0203)
    WebPMemoryWriterClear(&mw);
#else
    FUNC10(mw.mem); /* must use free() according to libwebp documentation */
#endif
    FUNC3(pic);
    FUNC5(&pic);
    FUNC4(&alt_frame);

    return ret;
}