
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bte_pcb {int cmdq; scalar_t__ state; } ;


 int LWP_InitQueue (int *) ;
 scalar_t__ STATE_NOTREADY ;
 int bte_pcbs ;
 struct bte_pcb* btmemb_alloc (int *) ;
 int memset (struct bte_pcb*,int ,int) ;

struct bte_pcb* bte_new()
{
 struct bte_pcb *pcb;

 if((pcb=btmemb_alloc(&bte_pcbs))==((void*)0)) return ((void*)0);

 memset(pcb,0,sizeof(struct bte_pcb));

 pcb->state = (u32)STATE_NOTREADY;
 LWP_InitQueue(&(pcb->cmdq));

 return pcb;
}
