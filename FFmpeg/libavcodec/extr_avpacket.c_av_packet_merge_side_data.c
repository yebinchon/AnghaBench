
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int * data; } ;
struct TYPE_8__ {int side_data_elems; scalar_t__ size; TYPE_1__* side_data; int * data; TYPE_3__* buf; } ;
struct TYPE_7__ {scalar_t__ size; int type; int * data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVBufferRef ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int FF_MERGE_MARKER ;
 scalar_t__ INT_MAX ;
 int av_assert0 (int) ;
 TYPE_3__* av_buffer_alloc (scalar_t__) ;
 int av_packet_unref (TYPE_2__*) ;
 int bytestream_put_be32 (int **,scalar_t__) ;
 int bytestream_put_be64 (int **,int ) ;
 int bytestream_put_buffer (int **,int *,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;

int av_packet_merge_side_data(AVPacket *pkt){
    if(pkt->side_data_elems){
        AVBufferRef *buf;
        int i;
        uint8_t *p;
        uint64_t size= pkt->size + 8LL + AV_INPUT_BUFFER_PADDING_SIZE;
        AVPacket old= *pkt;
        for (i=0; i<old.side_data_elems; i++) {
            size += old.side_data[i].size + 5LL;
        }
        if (size > INT_MAX)
            return AVERROR(EINVAL);
        buf = av_buffer_alloc(size);
        if (!buf)
            return AVERROR(ENOMEM);
        pkt->buf = buf;
        pkt->data = p = buf->data;
        pkt->size = size - AV_INPUT_BUFFER_PADDING_SIZE;
        bytestream_put_buffer(&p, old.data, old.size);
        for (i=old.side_data_elems-1; i>=0; i--) {
            bytestream_put_buffer(&p, old.side_data[i].data, old.side_data[i].size);
            bytestream_put_be32(&p, old.side_data[i].size);
            *p++ = old.side_data[i].type | ((i==old.side_data_elems-1)*128);
        }
        bytestream_put_be64(&p, FF_MERGE_MARKER);
        av_assert0(p-pkt->data == pkt->size);
        memset(p, 0, AV_INPUT_BUFFER_PADDING_SIZE);
        av_packet_unref(&old);
        pkt->side_data_elems = 0;
        pkt->side_data = ((void*)0);
        return 1;
    }
    return 0;
}
