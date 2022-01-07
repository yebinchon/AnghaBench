
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int kern_ctl_ref ;
typedef int errno_t ;



__attribute__((used)) static errno_t
necp_ctl_setopt(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, int opt, void *data, size_t len)
{
#pragma unused(kctlref, unit, unitinfo, opt, data, len)
 return (0);
}
