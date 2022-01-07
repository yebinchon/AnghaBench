
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int kern_ctl_ref ;
typedef int errno_t ;
typedef scalar_t__ UInt32 ;


 int LOG_DEBUG ;
 int OSCompareAndSwap (scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ TCP_CCDBG_NOUNIT ;
 int log (int ,char*) ;
 scalar_t__ tcp_ccdbg_unit ;

__attribute__((used)) static errno_t
tcp_ccdbg_control_disconnect(kern_ctl_ref kctl, u_int32_t unit, void *uinfo)
{
#pragma unused(kctl, unit, uinfo)

 if (unit == tcp_ccdbg_unit) {
  UInt32 old_value = tcp_ccdbg_unit;
  UInt32 new_value = TCP_CCDBG_NOUNIT;
  if (tcp_ccdbg_unit == new_value)
   return (0);

  if (!OSCompareAndSwap(old_value, new_value,
   &tcp_ccdbg_unit))
   log(LOG_DEBUG,
       "failed to disconnect tcp_cc debug control");
 }
 return (0);
}
