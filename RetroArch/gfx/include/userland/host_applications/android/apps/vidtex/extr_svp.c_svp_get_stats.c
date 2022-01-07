
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int stats; } ;
typedef TYPE_1__ SVP_T ;
typedef int SVP_STATS_T ;


 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void svp_get_stats(SVP_T *svp, SVP_STATS_T *stats)
{
   vcos_mutex_lock(&svp->mutex);
   *stats = svp->stats;
   vcos_mutex_unlock(&svp->mutex);
}
