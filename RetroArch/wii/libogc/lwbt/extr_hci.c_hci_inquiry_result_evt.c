
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct hci_inq_res {int psrm; int psm; int * next; int co; int cod; int bdaddr; } ;
struct bd_addr {int dummy; } ;
struct TYPE_2__ {int ires; } ;


 int ERROR (char*) ;
 int HCI_REG (int *,struct hci_inq_res*) ;
 int MEMB_NUM_HCI_INQ ;
 int bd_addr_set (int *,struct bd_addr*) ;
 struct hci_inq_res* btmemb_alloc (int *) ;
 TYPE_1__* hci_dev ;
 int hci_inq_results ;
 int le16toh (int ) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static void hci_inquiry_result_evt(struct pbuf *p)
{
 u8_t num_resp;
 u32_t i,resp_off;
 struct bd_addr *bdaddr;
 struct hci_inq_res *ires;

 num_resp = ((u8_t*)p->payload)[0];

 for(i=0;i<num_resp && i<MEMB_NUM_HCI_INQ;i++) {
  resp_off = (i*14);
  bdaddr = (void*)(((u8_t*)p->payload)+(1+resp_off));
  if((ires=btmemb_alloc(&hci_inq_results))!=((void*)0)) {
   bd_addr_set(&(ires->bdaddr),bdaddr);
   ires->psrm = ((u8_t*)p->payload)[7+resp_off];
   ires->psm = ((u8_t*)p->payload)[8+resp_off];
   memcpy(ires->cod,((u8_t*)p->payload)+10+resp_off,3);
   ires->co = le16toh(*((u16_t*)(((u8_t*)p->payload)+13+resp_off)));
   ires->next = ((void*)0);

   HCI_REG(&(hci_dev->ires),ires);
  } else
   ERROR("hci_inquriy_result_evt: Could not allocate memory for inquiry result\n");
 }

}
