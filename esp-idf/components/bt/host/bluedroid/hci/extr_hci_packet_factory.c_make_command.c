
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ HCI_COMMAND_PREAMBLE_SIZE ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,size_t) ;
 TYPE_1__* make_packet (scalar_t__) ;

__attribute__((used)) static BT_HDR *make_command(uint16_t opcode, size_t parameter_size, uint8_t **stream_out)
{
    BT_HDR *packet = make_packet(HCI_COMMAND_PREAMBLE_SIZE + parameter_size);

    uint8_t *stream = packet->data;
    UINT16_TO_STREAM(stream, opcode);
    UINT8_TO_STREAM(stream, parameter_size);

    if (stream_out != ((void*)0)) {
        *stream_out = stream;
    }

    return packet;
}
