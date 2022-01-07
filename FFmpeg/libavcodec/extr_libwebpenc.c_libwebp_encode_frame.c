
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int error_code; int writer; TYPE_2__* custom_ptr; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_20__ {int mem; int size; int member_0; } ;
typedef TYPE_2__ WebPMemoryWriter ;
struct TYPE_23__ {TYPE_3__* priv_data; } ;
struct TYPE_22__ {int flags; int data; } ;
struct TYPE_21__ {int config; } ;
typedef TYPE_3__ LibWebPContext ;
typedef TYPE_4__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 int WebPEncode (int *,TYPE_1__*) ;
 int WebPMemoryWrite ;
 int WebPMemoryWriterClear (TYPE_2__*) ;
 int WebPMemoryWriterInit (TYPE_2__*) ;
 int WebPPictureFree (TYPE_1__*) ;
 int av_frame_free (int **) ;
 int av_freep (TYPE_1__**) ;
 int av_log (TYPE_5__*,int ,char*,int ) ;
 int ff_alloc_packet2 (TYPE_5__*,TYPE_4__*,int ,int ) ;
 int ff_libwebp_error_to_averror (int ) ;
 int ff_libwebp_get_frame (TYPE_5__*,TYPE_3__*,int const*,int **,TYPE_1__**) ;
 int free (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int libwebp_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                                const AVFrame *frame, int *got_packet)
{
    LibWebPContext *s = avctx->priv_data;
    WebPPicture *pic = ((void*)0);
    AVFrame *alt_frame = ((void*)0);
    WebPMemoryWriter mw = { 0 };

    int ret = ff_libwebp_get_frame(avctx, s, frame, &alt_frame, &pic);
    if (ret < 0)
        goto end;

    WebPMemoryWriterInit(&mw);
    pic->custom_ptr = &mw;
    pic->writer = WebPMemoryWrite;

    ret = WebPEncode(&s->config, pic);
    if (!ret) {
        av_log(avctx, AV_LOG_ERROR, "WebPEncode() failed with error: %d\n",
               pic->error_code);
        ret = ff_libwebp_error_to_averror(pic->error_code);
        goto end;
    }

    ret = ff_alloc_packet2(avctx, pkt, mw.size, mw.size);
    if (ret < 0)
        goto end;
    memcpy(pkt->data, mw.mem, mw.size);

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

end:



    free(mw.mem);

    WebPPictureFree(pic);
    av_freep(&pic);
    av_frame_free(&alt_frame);

    return ret;
}
