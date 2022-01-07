
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int pte_threadDestroyCommon (int ,int ) ;

void pte_threadDestroy (pthread_t thread)
{
  pte_threadDestroyCommon(thread,0);
}
