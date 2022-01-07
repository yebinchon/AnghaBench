
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int size; scalar_t__ data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_TRUSTED ;
 int EINVAL ;
 int EPERM ;
 int av_frame_move_ref (int *,int *) ;
 int av_frame_unref (int *) ;
 int ff_attach_decode_data (int *) ;
 int ff_decode_frame_props (int *,int *) ;

__attribute__((used)) static int wrapped_avframe_decode(AVCodecContext *avctx, void *data,
                                  int *got_frame, AVPacket *pkt)
{
    AVFrame *in, *out;
    int err;

    if (!(pkt->flags & AV_PKT_FLAG_TRUSTED)) {

        return AVERROR(EPERM);
    }

    if (pkt->size < sizeof(AVFrame))
        return AVERROR(EINVAL);

    in = (AVFrame*)pkt->data;
    out = data;

    err = ff_decode_frame_props(avctx, out);
    if (err < 0)
        return err;

    av_frame_move_ref(out, in);

    err = ff_attach_decode_data(out);
    if (err < 0) {
        av_frame_unref(out);
        return err;
    }

    *got_frame = 1;
    return 0;
}
