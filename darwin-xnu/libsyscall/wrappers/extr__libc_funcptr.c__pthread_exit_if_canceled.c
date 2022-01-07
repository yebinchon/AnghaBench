
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* _pthread_exit_if_canceled ) (int) ;} ;


 TYPE_1__* _libkernel_functions ;
 void stub1 (int) ;

__attribute__((visibility("hidden")))
void
_pthread_exit_if_canceled(int error)
{
 return _libkernel_functions->_pthread_exit_if_canceled(error);
}
