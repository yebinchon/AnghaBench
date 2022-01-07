
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 TYPE_1__ gencmd_client ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static __inline void lock_release (void) {
   vcos_mutex_unlock(&gencmd_client.lock);
}
