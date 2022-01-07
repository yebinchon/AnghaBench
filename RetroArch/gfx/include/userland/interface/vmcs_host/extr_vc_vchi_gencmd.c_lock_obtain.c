
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ initialised; } ;


 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ gencmd_client ;
 scalar_t__ vcos_mutex_lock (int *) ;

__attribute__((used)) static __inline int lock_obtain (void) {
   int ret = -1;
   if(gencmd_client.initialised && vcos_mutex_lock(&gencmd_client.lock) == VCOS_SUCCESS)
   {
      ret = 0;
   }

   return ret;
}
