
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct linkkey_info {int key; int bdaddr; } ;
struct hci_pcb {struct hci_link_key* keyres; } ;
struct hci_link_key {struct hci_link_key* next; int key; int bdaddr; } ;
struct bt_state {scalar_t__ num_maxdevs; scalar_t__ usrdata; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_CONN ;
 scalar_t__ ERR_OK ;
 scalar_t__ ERR_VAL ;
 scalar_t__ HCI_HC_BB_OGF ;
 scalar_t__ HCI_R_STORED_LINK_KEY_OCF ;
 scalar_t__ HCI_SUCCESS ;
 int LOG (char*,scalar_t__,struct hci_link_key*,...) ;
 scalar_t__ __bte_cmdfinish (struct bt_state*,scalar_t__) ;
 int bd_addr_set (int *,int *) ;
 int memcpy (int ,int ,int) ;

err_t bte_read_stored_link_key_complete(void *arg,struct hci_pcb *pcb,u8_t ogf,u8_t ocf,u8_t result)
{
 u8_t i = 0;
 struct hci_link_key *p;
 struct linkkey_info *keys;
 struct bt_state *state = (struct bt_state*)arg;

 if(!pcb) return ERR_CONN;

 LOG("bte_read_stored_link_key_complete(%02x,%p)\n",result,pcb->keyres);

 if(state==((void*)0)) return ERR_VAL;
 if(!(ogf==HCI_HC_BB_OGF && ocf==HCI_R_STORED_LINK_KEY_OCF)) return __bte_cmdfinish(state,ERR_CONN);

 if(result==HCI_SUCCESS) {
  keys = (struct linkkey_info*)state->usrdata;
  if(pcb->keyres!=((void*)0) && keys!=((void*)0)) {
   for(i=0,p=pcb->keyres;i<state->num_maxdevs && p!=((void*)0);i++) {
    bd_addr_set(&(keys[i].bdaddr),&(p->bdaddr));
    memcpy(keys[i].key,p->key,16);

    p = p->next;
   }
  }
  LOG("bte_read_stored_link_key_complete(%02x,%p,%d)\n",result,pcb->keyres,i);
  __bte_cmdfinish(state,i);
  return ERR_OK;
 }

 return __bte_cmdfinish(state,ERR_VAL);
}
