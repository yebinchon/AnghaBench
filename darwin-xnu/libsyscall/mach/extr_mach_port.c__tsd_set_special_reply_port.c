
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mach_port_t ;


 int __TSD_MACH_SPECIAL_REPLY ;
 int _os_tsd_set_direct (int ,void*) ;

__attribute__((used)) static inline void
_tsd_set_special_reply_port(mach_port_t port)
{
 _os_tsd_set_direct(__TSD_MACH_SPECIAL_REPLY, (void *)(uintptr_t)port);
}
