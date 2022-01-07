
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct hci_pcb {int dummy; } ;
struct bt_state {scalar_t__ hci_inited; } ;
typedef int err_t ;


 int ERR_CONN ;
 int ERR_OK ;
 scalar_t__ HCI_SUCCESS ;
 int __bte_cmdfinish (struct bt_state*,int ) ;
 int hci_cmd_complete (int *) ;
 int physbusif_close () ;

__attribute__((used)) static err_t __bte_shutdown_finished(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
 err_t err;
 struct bt_state *state = (struct bt_state*)arg;

 if(state==((void*)0)) return ERR_OK;

 state->hci_inited = 0;
 hci_cmd_complete(((void*)0));
 if(result==HCI_SUCCESS)
  err = ERR_OK;
 else
  err = ERR_CONN;

 physbusif_close();
 return __bte_cmdfinish(state,err);
}
