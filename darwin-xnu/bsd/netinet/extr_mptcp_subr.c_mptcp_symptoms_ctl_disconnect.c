
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int OSDecrementAtomic (int *) ;
 int mptcp_kern_skt_inuse ;

__attribute__((used)) static errno_t
mptcp_symptoms_ctl_disconnect(kern_ctl_ref kctlref, u_int32_t kcunit,
 void *unitinfo)
{
#pragma unused(kctlref, kcunit, unitinfo)

 OSDecrementAtomic(&mptcp_kern_skt_inuse);

 return (0);
}
