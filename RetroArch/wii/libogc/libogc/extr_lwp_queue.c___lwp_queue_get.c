
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lwp_queue ;
typedef int lwp_node ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * __lwp_queue_firstnodeI (int *) ;
 int __lwp_queue_isempty (int *) ;

lwp_node* __lwp_queue_get(lwp_queue *queue)
{
 u32 level;
 lwp_node *ret = ((void*)0);

 _CPU_ISR_Disable(level);
 if(!__lwp_queue_isempty(queue)) {
  ret = __lwp_queue_firstnodeI(queue);
 }
 _CPU_ISR_Restore(level);
 return ret;
}
