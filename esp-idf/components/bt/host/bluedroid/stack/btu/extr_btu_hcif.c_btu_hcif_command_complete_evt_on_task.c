
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int command_opcode_t ;
struct TYPE_5__ {TYPE_2__* response; int context; } ;
typedef TYPE_1__ command_complete_hack_t ;
struct TYPE_6__ {int offset; scalar_t__ len; int * data; } ;
typedef TYPE_2__ BT_HDR ;


 int STREAM_TO_UINT16 (int ,int *) ;
 int btu_hcif_hdl_command_complete (int ,int *,scalar_t__,int ) ;
 int osi_free (TYPE_2__*) ;

__attribute__((used)) static void btu_hcif_command_complete_evt_on_task(BT_HDR *event)
{
    command_complete_hack_t *hack = (command_complete_hack_t *)&event->data[0];

    command_opcode_t opcode;
    uint8_t *stream = hack->response->data + hack->response->offset + 3;
    STREAM_TO_UINT16(opcode, stream);

    btu_hcif_hdl_command_complete(
        opcode,
        stream,
        hack->response->len - 5,
        hack->context);

    osi_free(hack->response);
    osi_free(event);
}
