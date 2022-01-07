
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct TYPE_2__ {int * pth_name; } ;


 int MAXTHREADNAMESIZE ;
 int kfree (void*,int ) ;

void
uthread_cleanup_name(void *uthread)
{
 uthread_t uth = (uthread_t)uthread;
 if (uth->pth_name != ((void*)0)) {
  void *pth_name = uth->pth_name;
  uth->pth_name = ((void*)0);
  kfree(pth_name, MAXTHREADNAMESIZE);
 }
 return;
}
