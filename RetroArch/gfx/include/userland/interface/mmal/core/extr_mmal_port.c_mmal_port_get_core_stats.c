
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int dir; scalar_t__ reset; int stats; } ;
struct TYPE_7__ {int tx; int rx; } ;
struct TYPE_10__ {int stats_lock; TYPE_1__ stats; } ;
struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_8__ {TYPE_4__* core; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PORT_PRIVATE_CORE_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef TYPE_5__ MMAL_PARAMETER_CORE_STATISTICS_T ;
typedef int MMAL_CORE_STATISTICS_T ;



 int MMAL_SUCCESS ;
 int memset (int *,int ,int) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_get_core_stats(MMAL_PORT_T *port, MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_PARAMETER_CORE_STATISTICS_T *stats_param = (MMAL_PARAMETER_CORE_STATISTICS_T*)param;
   MMAL_CORE_STATISTICS_T *stats = &stats_param->stats;
   MMAL_CORE_STATISTICS_T *src_stats;
   MMAL_PORT_PRIVATE_CORE_T *core = port->priv->core;
   vcos_mutex_lock(&core->stats_lock);
   switch (stats_param->dir)
   {
   case 128:
      src_stats = &port->priv->core->stats.rx;
      break;
   default:
      src_stats = &port->priv->core->stats.tx;
      break;
   }
   *stats = *src_stats;
   if (stats_param->reset)
      memset(src_stats, 0, sizeof(*src_stats));
   vcos_mutex_unlock(&core->stats_lock);
   return MMAL_SUCCESS;
}
