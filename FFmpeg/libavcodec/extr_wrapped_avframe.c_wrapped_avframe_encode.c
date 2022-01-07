
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int size; int flags; int * data; int buf; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AV_BUFFER_FLAG_READONLY ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_PKT_FLAG_KEY ;
 int ENOMEM ;
 int av_buffer_create (int *,int,int ,int *,int ) ;
 int * av_frame_clone (int const*) ;
 int av_frame_free (int **) ;
 int av_frame_move_ref (int *,int *) ;
 int av_freep (int **) ;
 int * av_mallocz (int) ;
 int wrapped_avframe_release_buffer ;

__attribute__((used)) static int wrapped_avframe_encode(AVCodecContext *avctx, AVPacket *pkt,
                     const AVFrame *frame, int *got_packet)
{
    AVFrame *wrapped = av_frame_clone(frame);
    uint8_t *data;
    int size = sizeof(*wrapped) + AV_INPUT_BUFFER_PADDING_SIZE;

    if (!wrapped)
        return AVERROR(ENOMEM);

    data = av_mallocz(size);
    if (!data) {
        av_frame_free(&wrapped);
        return AVERROR(ENOMEM);
    }

    pkt->buf = av_buffer_create(data, size,
                                wrapped_avframe_release_buffer, ((void*)0),
                                AV_BUFFER_FLAG_READONLY);
    if (!pkt->buf) {
        av_frame_free(&wrapped);
        av_freep(&data);
        return AVERROR(ENOMEM);
    }

    av_frame_move_ref((AVFrame*)data, wrapped);
    av_frame_free(&wrapped);

    pkt->data = data;
    pkt->size = sizeof(*wrapped);

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}
