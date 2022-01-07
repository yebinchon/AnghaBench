
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {void* context; TYPE_2__* command; int status; int callback; } ;
typedef TYPE_1__ command_status_hack_t ;
struct TYPE_7__ {int event; int * data; } ;
typedef TYPE_2__ BT_HDR ;


 int BTU_POST_TO_TASK_NO_GOOD_HORRIBLE_HACK ;
 int OSI_THREAD_MAX_TIMEOUT ;
 int SIG_BTU_HCI_MSG ;
 int btu_hcif_command_status_evt_on_task ;
 int btu_task_post (int ,TYPE_2__*,int ) ;
 TYPE_2__* osi_calloc (int) ;

__attribute__((used)) static void btu_hcif_command_status_evt(uint8_t status, BT_HDR *command, void *context)
{
    BT_HDR *event = osi_calloc(sizeof(BT_HDR) + sizeof(command_status_hack_t));
    command_status_hack_t *hack = (command_status_hack_t *)&event->data[0];

    hack->callback = btu_hcif_command_status_evt_on_task;
    hack->status = status;
    hack->command = command;
    hack->context = context;

    event->event = BTU_POST_TO_TASK_NO_GOOD_HORRIBLE_HACK;

    btu_task_post(SIG_BTU_HCI_MSG, event, OSI_THREAD_MAX_TIMEOUT);
}
