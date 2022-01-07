
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_name_t ;


 int __TSD_MACH_THREAD_SELF ;
 scalar_t__ _os_tsd_get_direct (int ) ;

__attribute__((used)) __inline static mach_port_name_t
_os_get_self(void)
{
 mach_port_name_t self = (mach_port_name_t)(uintptr_t)(void *)_os_tsd_get_direct(__TSD_MACH_THREAD_SELF);
 return self;
}
