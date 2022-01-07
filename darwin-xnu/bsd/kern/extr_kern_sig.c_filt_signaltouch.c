
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_data; } ;
struct kevent_internal_s {int dummy; } ;


 int proc_klist_lock () ;
 int proc_klist_unlock () ;

__attribute__((used)) static int
filt_signaltouch(
 struct knote *kn,
 struct kevent_internal_s *kev)
{
#pragma unused(kev)

 int res;

 proc_klist_lock();




 res = (kn->kn_data > 0);

 proc_klist_unlock();

 return res;
}
