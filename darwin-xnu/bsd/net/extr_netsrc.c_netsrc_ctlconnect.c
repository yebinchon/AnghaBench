
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ctl {int dummy; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;



__attribute__((used)) static errno_t
netsrc_ctlconnect(kern_ctl_ref kctl, struct sockaddr_ctl *sac, void **uinfo)
{
#pragma unused(kctl, sac, uinfo)





 return (0);
}
