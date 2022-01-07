
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int data; } ;
struct TYPE_10__ {int size; int data; TYPE_2__* buf; } ;
typedef TYPE_1__ AVPacket ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_assert1 (int) ;
 TYPE_2__* av_buffer_ref (TYPE_2__*) ;
 int av_packet_copy_props (TYPE_1__*,TYPE_1__ const*) ;
 int av_packet_free_side_data (TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;
 int packet_alloc (TYPE_2__**,int ) ;

int av_packet_ref(AVPacket *dst, const AVPacket *src)
{
    int ret;

    ret = av_packet_copy_props(dst, src);
    if (ret < 0)
        return ret;

    if (!src->buf) {
        ret = packet_alloc(&dst->buf, src->size);
        if (ret < 0)
            goto fail;
        av_assert1(!src->size || src->data);
        if (src->size)
            memcpy(dst->buf->data, src->data, src->size);

        dst->data = dst->buf->data;
    } else {
        dst->buf = av_buffer_ref(src->buf);
        if (!dst->buf) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        dst->data = src->data;
    }

    dst->size = src->size;

    return 0;
fail:
    av_packet_free_side_data(dst);
    return ret;
}
