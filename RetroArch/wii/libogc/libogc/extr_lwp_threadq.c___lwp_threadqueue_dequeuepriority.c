
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;


typedef size_t u32 ;
struct TYPE_20__ {TYPE_14__* priority; } ;
struct TYPE_24__ {int sync_state; TYPE_1__ queues; } ;
typedef TYPE_5__ lwp_thrqueue ;
struct TYPE_25__ {struct TYPE_25__* prev; struct TYPE_25__* next; } ;
typedef TYPE_6__ lwp_node ;
struct TYPE_19__ {TYPE_6__* last; TYPE_6__* first; } ;
struct TYPE_23__ {TYPE_14__ block2n; } ;
struct TYPE_21__ {TYPE_6__* prev; TYPE_6__* next; } ;
struct TYPE_22__ {TYPE_2__ node; } ;
struct TYPE_26__ {int timer; TYPE_4__ wait; TYPE_3__ object; } ;
typedef TYPE_7__ lwp_cntrl ;



 size_t LWP_THREADQ_NUM_PRIOHEADERS ;



 int _CPU_ISR_Disable (size_t) ;
 int _CPU_ISR_Restore (size_t) ;
 TYPE_6__* __lwp_queue_head (TYPE_14__*) ;
 int __lwp_queue_isempty (TYPE_14__*) ;
 int __lwp_queue_onenode (TYPE_14__*) ;
 TYPE_6__* __lwp_queue_tail (TYPE_14__*) ;
 int __lwp_thread_unblock (TYPE_7__*) ;
 int __lwp_wd_deactivate (int *) ;
 int __lwp_wd_isactive (int *) ;
 int __lwp_wd_remove_ticks (int *) ;
 TYPE_7__* _thr_executing ;
 int printf (char*,TYPE_7__*,...) ;

lwp_cntrl* __lwp_threadqueue_dequeuepriority(lwp_thrqueue *queue)
{
 u32 level,idx;
 lwp_cntrl *newfirstthr,*ret = ((void*)0);
 lwp_node *newfirstnode,*newsecnode,*last_node,*next_node,*prev_node;

 _CPU_ISR_Disable(level);
 for(idx=0;idx<LWP_THREADQ_NUM_PRIOHEADERS;idx++) {
  if(!__lwp_queue_isempty(&queue->queues.priority[idx])) {
   ret = (lwp_cntrl*)queue->queues.priority[idx].first;
   goto dequeue;
  }
 }




 switch(queue->sync_state) {
  case 129:
  case 130:
   _CPU_ISR_Restore(level);
   return ((void*)0);
  case 131:
  case 128:
   queue->sync_state = 130;
   _CPU_ISR_Restore(level);
   return _thr_executing;
 }

dequeue:



 newfirstnode = ret->wait.block2n.first;
 newfirstthr = (lwp_cntrl*)newfirstnode;
 next_node = ret->object.node.next;
 prev_node = ret->object.node.prev;
 if(!__lwp_queue_isempty(&ret->wait.block2n)) {
  last_node = ret->wait.block2n.last;
  newsecnode = newfirstnode->next;
  prev_node->next = newfirstnode;
  next_node->prev = newfirstnode;
  newfirstnode->next = next_node;
  newfirstnode->prev = prev_node;

  if(!__lwp_queue_onenode(&ret->wait.block2n)) {
   newsecnode->prev = __lwp_queue_head(&newfirstthr->wait.block2n);
   newfirstthr->wait.block2n.first = newsecnode;
   newfirstthr->wait.block2n.last = last_node;
   last_node->next = __lwp_queue_tail(&newfirstthr->wait.block2n);
  }
 } else {
  prev_node->next = next_node;
  next_node->prev = prev_node;
 }

 if(!__lwp_wd_isactive(&ret->timer)) {
  _CPU_ISR_Restore(level);
  __lwp_thread_unblock(ret);
 } else {
  __lwp_wd_deactivate(&ret->timer);
  _CPU_ISR_Restore(level);
  __lwp_wd_remove_ticks(&ret->timer);
  __lwp_thread_unblock(ret);
 }
 return ret;
}
