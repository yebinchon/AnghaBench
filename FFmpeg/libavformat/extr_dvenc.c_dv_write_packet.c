
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct AVFormatContext {int pb; int * streams; int priv_data; } ;
struct TYPE_3__ {size_t stream_index; int size; int data; } ;
typedef TYPE_1__ AVPacket ;


 int avio_write (int ,int *,int) ;
 int dv_assemble_frame (struct AVFormatContext*,int ,int ,int ,int ,int **) ;

__attribute__((used)) static int dv_write_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    uint8_t* frame;
    int fsize;

    fsize = dv_assemble_frame(s, s->priv_data, s->streams[pkt->stream_index],
                              pkt->data, pkt->size, &frame);
    if (fsize > 0) {
        avio_write(s->pb, frame, fsize);
    }
    return 0;
}
