
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int data; } ;
struct TYPE_4__ {int pos; TYPE_2__* packet; } ;
typedef TYPE_1__ PacketWriter ;
typedef int OPJ_SIZE_T ;
typedef TYPE_2__ AVPacket ;


 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int INT_MAX ;
 scalar_t__ av_grow_packet (TYPE_2__*,int) ;
 int memcpy (int,void*,int) ;

__attribute__((used)) static OPJ_SIZE_T stream_write(void *out_buffer, OPJ_SIZE_T nb_bytes, void *user_data)
{
    PacketWriter *writer = user_data;
    AVPacket *packet = writer->packet;
    int remaining = packet->size - writer->pos;
    if (nb_bytes > remaining) {
        OPJ_SIZE_T needed = nb_bytes - remaining;
        int max_growth = INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE - packet->size;
        if (needed > max_growth) {
            return (OPJ_SIZE_T)-1;
        }
        if (av_grow_packet(packet, (int)needed)) {
            return (OPJ_SIZE_T)-1;
        }
    }
    memcpy(packet->data + writer->pos, out_buffer, nb_bytes);
    writer->pos += (int)nb_bytes;
    return nb_bytes;
}
