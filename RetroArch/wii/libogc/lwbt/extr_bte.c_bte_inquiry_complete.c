
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8_t ;
typedef scalar_t__ u16_t ;
struct inquiry_info_ex {int psrm; int psm; int co; int cod; int bdaddr; } ;
struct hci_pcb {int dummy; } ;
struct TYPE_4__ {int* addr; } ;
struct hci_inq_res {int* cod; int psrm; int psm; int co; struct hci_inq_res* next; TYPE_2__ bdaddr; } ;
struct bt_state {int dummy; } ;
typedef int err_t ;
struct TYPE_3__ {int num_founddevs; scalar_t__ num_maxdevs; struct inquiry_info_ex* info; } ;


 int ERR_OK ;
 scalar_t__ HCI_SUCCESS ;
 int __bte_cmdfinish (struct bt_state*,int ) ;
 int bd_addr_set (int *,TYPE_2__*) ;
 TYPE_1__ btstate ;
 int free (struct inquiry_info_ex*) ;
 int hci_inquiry (int,int,scalar_t__,int (*) (void*,struct hci_pcb*,struct hci_inq_res*,scalar_t__)) ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int*,int) ;
 int printf (char*,int,...) ;

err_t bte_inquiry_complete(void *arg,struct hci_pcb *pcb,struct hci_inq_res *ires,u16_t result)
{
 u8_t i;
 struct hci_inq_res *p;
 struct bt_state *state = (struct bt_state*)arg;

 if(result==HCI_SUCCESS) {
  if(ires!=((void*)0)) {

   if(btstate.info!=((void*)0)) free(btstate.info);
   btstate.info = ((void*)0);
   btstate.num_maxdevs = 0;
   btstate.num_founddevs = 0;

   p = ires;
   while(p!=((void*)0)) {
    btstate.num_founddevs++;
    p = p->next;
   }

   p = ires;
   btstate.info = (struct inquiry_info_ex*)malloc(sizeof(struct inquiry_info_ex)*btstate.num_founddevs);
   for(i=0;i<btstate.num_founddevs && p!=((void*)0);i++) {
    bd_addr_set(&(btstate.info[i].bdaddr),&(p->bdaddr));
    memcpy(btstate.info[i].cod,p->cod,3);
    btstate.info[i].psrm = p->psrm;
    btstate.info[i].psm = p->psm;
    btstate.info[i].co = p->co;

    printf("bdaddr: %02x:%02x:%02x:%02x:%02x:%02x\n",p->bdaddr.addr[0],p->bdaddr.addr[1],p->bdaddr.addr[2],p->bdaddr.addr[3],p->bdaddr.addr[4],p->bdaddr.addr[5]);
    printf("cod:    %02x%02x%02x\n",p->cod[0],p->cod[1],p->cod[2]);
    printf("psrm:   %02x\n",p->psrm);
    printf("psm:   %02x\n",p->psm);
    printf("co:   %04x\n",p->co);
    p = p->next;
   }
   __bte_cmdfinish(state,ERR_OK);
  } else
   hci_inquiry(0x009E8B33,0x03,btstate.num_maxdevs,bte_inquiry_complete);
 }
 return ERR_OK;
}
