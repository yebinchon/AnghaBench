
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _inpcb_sched_timeout (int ) ;
 int inpcb_timeout_lazy ;

__attribute__((used)) static void
inpcb_sched_lazy_timeout(void)
{
 _inpcb_sched_timeout(inpcb_timeout_lazy);
}
