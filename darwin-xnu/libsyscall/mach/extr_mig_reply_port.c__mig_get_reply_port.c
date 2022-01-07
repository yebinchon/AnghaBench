
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int __TSD_MIG_REPLY ;
 scalar_t__ _os_tsd_get_direct (int ) ;

__attribute__((used)) static inline mach_port_t
_mig_get_reply_port()
{
 return (mach_port_t)(uintptr_t)_os_tsd_get_direct(__TSD_MIG_REPLY);
}
