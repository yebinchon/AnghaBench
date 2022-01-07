
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct bte_pcb {int cbarg; int (* recv ) (int ,void*,int ) ;} ;






 int LOG (char*,struct bte_pcb*) ;
 int stub1 (int ,void*,int ) ;

__attribute__((used)) static void bte_process_data(struct bte_pcb *pcb,u8_t param,void *buf,u16_t len)
{
 LOG("bte_process_data(%p)\n",pcb);
 switch(param) {
  case 130:
   if(pcb->recv!=((void*)0)) pcb->recv(pcb->cbarg,buf,len);
   break;
  case 129:
  case 128:
  case 131:
   break;
  default:
   break;
 }
}
