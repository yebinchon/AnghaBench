
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int size; int * data; int buf; } ;
typedef TYPE_1__ AVPacket ;


 int AVERROR (int ) ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int INT_MAX ;
 int av_buffer_create (int *,int,int ,int *,int ) ;
 int av_buffer_default_free ;

int av_packet_from_data(AVPacket *pkt, uint8_t *data, int size)
{
    if (size >= INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return AVERROR(EINVAL);

    pkt->buf = av_buffer_create(data, size + AV_INPUT_BUFFER_PADDING_SIZE,
                                av_buffer_default_free, ((void*)0), 0);
    if (!pkt->buf)
        return AVERROR(ENOMEM);

    pkt->data = data;
    pkt->size = size;

    return 0;
}
