
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
struct l2cap_pcb {scalar_t__ scid; struct l2cap_pcb* next; } ;


 scalar_t__ L2CAP_MAX_CID ;
 scalar_t__ L2CAP_MIN_CID ;
 struct l2cap_pcb* l2cap_active_pcbs ;

__attribute__((used)) static u16_t l2cap_cid_alloc(void)
{
 u16_t cid;
 struct l2cap_pcb *pcb;

 for (cid = L2CAP_MIN_CID; cid < L2CAP_MAX_CID; ++cid) {
  for(pcb = l2cap_active_pcbs; pcb != ((void*)0); pcb = pcb->next) {
   if(pcb->scid == cid) {
    break;
   }
  }
  if(pcb == ((void*)0)) {
   return cid;
  }
 }
 return 0;
}
