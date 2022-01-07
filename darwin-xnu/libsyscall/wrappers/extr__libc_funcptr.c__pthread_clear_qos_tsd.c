
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_port_t ;
struct TYPE_2__ {int version; void (* pthread_clear_qos_tsd ) (int ) ;} ;


 TYPE_1__* _libkernel_functions ;
 void stub1 (int ) ;

__attribute__((visibility("hidden")))
void
_pthread_clear_qos_tsd(mach_port_t thread_port)
{
 if (_libkernel_functions->version >= 3 &&
   _libkernel_functions->pthread_clear_qos_tsd) {
  return _libkernel_functions->pthread_clear_qos_tsd(thread_port);
 }
}
