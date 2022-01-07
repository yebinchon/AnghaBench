
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8_t ;
typedef int u16_t ;
struct hci_inq_res {int * next; int co; void* psm; void* psrm; int cod; int bdaddr; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;
struct TYPE_2__ {int ires; } ;


 int ERR_MEM ;
 int ERR_OK ;
 int ERR_VAL ;
 int HCI_REG (int *,struct hci_inq_res*) ;
 int bd_addr_set (int *,struct bd_addr*) ;
 struct hci_inq_res* btmemb_alloc (int *) ;
 TYPE_1__* hci_dev ;
 int hci_inq_results ;
 int memcpy (int ,void**,int) ;

err_t hci_reg_dev_info(struct bd_addr *bdaddr,u8_t *cod,u8_t psrm,u8_t psm,u16_t co)
{
 struct hci_inq_res *ires;

 if(hci_dev==((void*)0)) return ERR_VAL;

 if((ires=btmemb_alloc(&hci_inq_results))!=((void*)0)) {
  bd_addr_set(&(ires->bdaddr),bdaddr);
  memcpy(ires->cod,cod,3);
  ires->psrm = psrm;
  ires->psm = psm;
  ires->co = co;
  ires->next = ((void*)0);

  HCI_REG(&(hci_dev->ires),ires);
  return ERR_OK;
 }
 return ERR_MEM;
}
