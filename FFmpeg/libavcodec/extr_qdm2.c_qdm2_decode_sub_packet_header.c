
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * buffer; } ;
struct TYPE_7__ {int type; int size; int * data; } ;
typedef TYPE_1__ QDM2SubPacket ;
typedef TYPE_2__ GetBitContext ;


 int AV_LOG_DEBUG ;
 int av_log (int *,int ,char*,int,int,int) ;
 int get_bits (TYPE_2__*,int) ;
 int get_bits_count (TYPE_2__*) ;

__attribute__((used)) static void qdm2_decode_sub_packet_header(GetBitContext *gb,
                                          QDM2SubPacket *sub_packet)
{
    sub_packet->type = get_bits(gb, 8);

    if (sub_packet->type == 0) {
        sub_packet->size = 0;
        sub_packet->data = ((void*)0);
    } else {
        sub_packet->size = get_bits(gb, 8);

        if (sub_packet->type & 0x80) {
            sub_packet->size <<= 8;
            sub_packet->size |= get_bits(gb, 8);
            sub_packet->type &= 0x7f;
        }

        if (sub_packet->type == 0x7f)
            sub_packet->type |= (get_bits(gb, 8) << 8);


        sub_packet->data = &gb->buffer[get_bits_count(gb) / 8];
    }

    av_log(((void*)0), AV_LOG_DEBUG, "Subpacket: type=%d size=%d start_offs=%x\n",
           sub_packet->type, sub_packet->size, get_bits_count(gb) / 8);
}
