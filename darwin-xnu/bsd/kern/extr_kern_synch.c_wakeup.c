
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int thread_wakeup (int ) ;

void
wakeup(void *chan)
{
 thread_wakeup((caddr_t)chan);
}
