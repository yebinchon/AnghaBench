
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; scalar_t__ stop; } ;
typedef TYPE_1__ SVP_T ;


 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void svp_reset_stop(SVP_T *svp)
{
   vcos_mutex_lock(&svp->mutex);
   svp->stop = 0;
   vcos_mutex_unlock(&svp->mutex);
}
