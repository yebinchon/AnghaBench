
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {int pos; TYPE_2__* packet; } ;
typedef TYPE_1__ PacketWriter ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BOOL ;
typedef TYPE_2__ AVPacket ;


 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 scalar_t__ INT_MAX ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 scalar_t__ av_grow_packet (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static OPJ_BOOL stream_seek(OPJ_OFF_T nb_bytes, void *user_data)
{
    PacketWriter *writer = user_data;
    AVPacket *packet = writer->packet;
    if (nb_bytes < 0) {
        return OPJ_FALSE;
    }
    if (nb_bytes > packet->size) {
        if (nb_bytes > INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE ||
            av_grow_packet(packet, (int)nb_bytes - packet->size)) {
            return OPJ_FALSE;
        }
    }
    writer->pos = (int)nb_bytes;
    return OPJ_TRUE;
}
