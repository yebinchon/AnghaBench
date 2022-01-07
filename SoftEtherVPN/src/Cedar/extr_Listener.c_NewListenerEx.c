
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int THREAD_PROC ;
typedef int LISTENER ;
typedef int CEDAR ;


 int * NewListenerEx2 (int *,int ,int ,int *,void*,int) ;

LISTENER *NewListenerEx(CEDAR *cedar, UINT proto, UINT port, THREAD_PROC *proc, void *thread_param)
{
 return NewListenerEx2(cedar, proto, port, proc, thread_param, 0);
}
