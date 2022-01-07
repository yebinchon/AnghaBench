
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bte_pcb {void* cbarg; } ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

void bte_arg(struct bte_pcb *pcb,void *arg)
{
 u32 level;
 _CPU_ISR_Disable(level);
 pcb->cbarg = arg;
 _CPU_ISR_Restore(level);
}
