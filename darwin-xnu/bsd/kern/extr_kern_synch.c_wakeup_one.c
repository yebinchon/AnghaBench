
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ caddr_t ;


 int thread_wakeup_one (scalar_t__) ;

void
wakeup_one(caddr_t chan)
{
 thread_wakeup_one((caddr_t)chan);
}
