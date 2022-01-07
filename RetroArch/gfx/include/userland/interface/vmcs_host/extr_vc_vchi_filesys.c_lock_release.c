
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filesys_lock; int open_handle; int initialised; } ;


 TYPE_1__ vc_filesys_client ;
 int vchi_service_release (int ) ;
 int vcos_assert (int ) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static __inline void lock_release (void) {
   vcos_assert(vc_filesys_client.initialised);
   vchi_service_release(vc_filesys_client.open_handle);
   vcos_mutex_unlock(&vc_filesys_client.filesys_lock);
}
