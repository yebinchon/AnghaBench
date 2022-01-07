
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* robustMxList; } ;
typedef TYPE_1__ ptw32_thread_t ;
struct TYPE_8__ {struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef TYPE_2__ ptw32_robust_node_t ;
struct TYPE_9__ {scalar_t__ p; } ;
typedef TYPE_3__ pthread_t ;
typedef TYPE_4__* pthread_mutex_t ;
struct TYPE_10__ {TYPE_3__ ownerThread; TYPE_2__* robustNode; } ;



void
ptw32_robust_mutex_add(pthread_mutex_t* mutex, pthread_t self)
{
  ptw32_robust_node_t** list;
  pthread_mutex_t mx = *mutex;
  ptw32_thread_t* tp = (ptw32_thread_t*)self.p;
  ptw32_robust_node_t* robust = mx->robustNode;

  list = &tp->robustMxList;
  mx->ownerThread = self;
  if (((void*)0) == *list)
    {
      robust->prev = ((void*)0);
      robust->next = ((void*)0);
      *list = robust;
    }
  else
    {
      robust->prev = ((void*)0);
      robust->next = *list;
      (*list)->prev = robust;
      *list = robust;
    }
}
