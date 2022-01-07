
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8_t ;
struct TYPE_2__ {int * addr; } ;
struct hci_pcb {TYPE_1__ bdaddr; } ;
struct bt_state {scalar_t__ usrdata; } ;
struct bd_addr {int * addr; } ;
typedef int err_t ;


 int ERR_CONN ;
 int ERR_OK ;
 int ERR_VAL ;
 scalar_t__ HCI_INFO_PARAM_OGF ;
 scalar_t__ HCI_R_BD_ADDR_OCF ;
 scalar_t__ HCI_SUCCESS ;
 int LOG (char*,scalar_t__,...) ;
 int __bte_cmdfinish (struct bt_state*,int ) ;
 int i ;

err_t bte_read_bd_addr_complete(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
    struct bd_addr *bdaddr;
    struct bt_state *state = (struct bt_state*)arg;

    if(!pcb) return ERR_CONN;

    LOG("bte_read_bd_addr_complete(%02x,%p)\n", result, &pcb->bdaddr);

    if(state==((void*)0)) return ERR_VAL;

    if(!(ogf==HCI_INFO_PARAM_OGF && ocf==HCI_R_BD_ADDR_OCF)) return __bte_cmdfinish(state,ERR_CONN);

    if(result == HCI_SUCCESS) {
        bdaddr = (struct bd_addr *)state->usrdata;
        if (bdaddr != ((void*)0)) {
            bdaddr->addr[0] = pcb->bdaddr.addr[5];
            bdaddr->addr[1] = pcb->bdaddr.addr[4];
            bdaddr->addr[2] = pcb->bdaddr.addr[3];
            bdaddr->addr[3] = pcb->bdaddr.addr[2];
            bdaddr->addr[4] = pcb->bdaddr.addr[1];
            bdaddr->addr[5] = pcb->bdaddr.addr[0];
        }
        LOG("bte_read_bd_addr_complete(%02x,%p,%d)\n",result,bdaddr,i);
        __bte_cmdfinish(state,ERR_OK);
        return ERR_OK;
    }

    return __bte_cmdfinish(state,ERR_VAL);
}
