
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int mutex; int stop; } ;
typedef TYPE_1__ SVP_T ;


 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void svp_set_stop(SVP_T *svp, uint32_t stop_flags)
{
   vcos_mutex_lock(&svp->mutex);
   svp->stop |= stop_flags;
   vcos_mutex_unlock(&svp->mutex);
}
