
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lwp_node ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_queue_extractI (int *) ;

void __lwp_queue_extract(lwp_node *node)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __lwp_queue_extractI(node);
 _CPU_ISR_Restore(level);
}
