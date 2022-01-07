
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ctl {int dummy; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int ENOBUFS ;
 void* necp_create_session () ;

__attribute__((used)) static errno_t
necp_ctl_connect(kern_ctl_ref kctlref, struct sockaddr_ctl *sac, void **unitinfo)
{
#pragma unused(kctlref, sac)
 *unitinfo = necp_create_session();
 if (*unitinfo == ((void*)0)) {

  return (ENOBUFS);
 }

 return (0);
}
