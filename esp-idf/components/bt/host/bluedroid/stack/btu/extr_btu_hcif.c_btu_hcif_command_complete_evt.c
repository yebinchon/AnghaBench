
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int command_opcode_t ;
struct TYPE_6__ {void* context; TYPE_2__* response; int callback; } ;
typedef TYPE_1__ command_complete_hack_t ;
struct TYPE_7__ {void** data; int offset; int event; } ;
typedef TYPE_2__ BT_HDR ;


 int BTU_POST_TO_TASK_NO_GOOD_HORRIBLE_HACK ;






 int HCI_TRACE_DEBUG (char*) ;
 int OSI_THREAD_MAX_TIMEOUT ;
 int SIG_BTU_HCI_MSG ;
 int STREAM_TO_UINT16 (int,void**) ;
 int adv_data_sem ;
 void* adv_data_status ;
 int adv_enable_sem ;
 void* adv_enable_status ;
 int adv_param_sem ;
 void* adv_param_status ;
 int btu_hcif_command_complete_evt_on_task ;
 int btu_task_post (int ,TYPE_2__*,int ) ;
 TYPE_2__* osi_calloc (int) ;
 int osi_sem_give (int *) ;
 int scan_enable_sem ;
 void* scan_enable_status ;
 int scan_param_sem ;
 void* scan_param_status ;

__attribute__((used)) static void btu_hcif_command_complete_evt(BT_HDR *response, void *context)
{

    command_opcode_t opcode;
    uint8_t *stream = response->data + response->offset + 3;
    STREAM_TO_UINT16(opcode, stream);
    switch (opcode) {
        case 133:
            adv_data_status = *stream;
            osi_sem_give(&adv_data_sem);
            break;
        case 128:
            adv_data_status = *stream;
            osi_sem_give(&adv_data_sem);
            break;
        case 132: {
            adv_enable_status = *stream;
            osi_sem_give(&adv_enable_sem);
            break;
        }
        case 131:
            adv_param_status = *stream;
            osi_sem_give(&adv_param_sem);
            break;
        case 129:
            scan_param_status = *stream;
            osi_sem_give(&scan_param_sem);
            break;
        case 130:
            scan_enable_status = *stream;
            osi_sem_give(&scan_enable_sem);
            break;
        default:
            break;
    }

    BT_HDR *event = osi_calloc(sizeof(BT_HDR) + sizeof(command_complete_hack_t));
    command_complete_hack_t *hack = (command_complete_hack_t *)&event->data[0];

    HCI_TRACE_DEBUG("btu_hcif_command_complete_evt\n");

    hack->callback = btu_hcif_command_complete_evt_on_task;
    hack->response = response;
    hack->context = context;

    event->event = BTU_POST_TO_TASK_NO_GOOD_HORRIBLE_HACK;

    btu_task_post(SIG_BTU_HCI_MSG, event, OSI_THREAD_MAX_TIMEOUT);
}
