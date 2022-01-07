
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 TYPE_1__ gx ;
 int vcos_mutex_delete (int *) ;

void gx_priv_destroy(void)
{
   vcos_mutex_delete(&gx.lock);
}
