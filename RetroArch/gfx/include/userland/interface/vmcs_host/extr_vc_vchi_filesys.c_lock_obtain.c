
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {int open_handle; int filesys_lock; scalar_t__ initialised; } ;


 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ vc_filesys_client ;
 int vchi_service_use (int ) ;
 scalar_t__ vcos_mutex_lock (int *) ;

__attribute__((used)) static __inline int32_t lock_obtain (void) {
   int ret = -1;
   if(vc_filesys_client.initialised && vcos_mutex_lock(&vc_filesys_client.filesys_lock) == VCOS_SUCCESS) {
      vchi_service_use(vc_filesys_client.open_handle);
      ret = 0;
   }
   return ret;
}
