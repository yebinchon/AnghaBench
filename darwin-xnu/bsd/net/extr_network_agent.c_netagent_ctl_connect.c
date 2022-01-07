
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ctl {int sc_unit; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int ENOBUFS ;
 void* netagent_create_session (int ) ;

__attribute__((used)) static errno_t
netagent_ctl_connect(kern_ctl_ref kctlref, struct sockaddr_ctl *sac, void **unitinfo)
{
#pragma unused(kctlref)
 *unitinfo = netagent_create_session(sac->sc_unit);
 if (*unitinfo == ((void*)0)) {

  return (ENOBUFS);
 }

 return (0);
}
