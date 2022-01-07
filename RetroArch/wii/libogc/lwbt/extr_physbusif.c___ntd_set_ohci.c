
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __ntd_ohci ;
 int __ntd_ohci_initflag ;

void __ntd_set_ohci(u8 hci)
{
 if(hci==0x0000) {
  __ntd_ohci = 0;
  __ntd_ohci_initflag = 1;
 } else if(hci==0x0001) {
  __ntd_ohci = 1;
  __ntd_ohci_initflag = 1;
 }
}
