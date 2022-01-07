
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int param ;
struct TYPE_5__ {int size; int id; } ;
struct TYPE_4__ {int stats; TYPE_2__ hdr; int reset; int dir; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_1__ MMAL_PARAMETER_CORE_STATISTICS_T ;
typedef int MMAL_CORE_STATS_DIR ;
typedef int MMAL_CORE_STATISTICS_T ;
typedef int MMAL_BOOL_T ;


 int MMAL_PARAMETER_CORE_STATISTICS ;
 scalar_t__ MMAL_SUCCESS ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ mmal_port_parameter_get (int *,TYPE_2__*) ;

MMAL_STATUS_T mmal_util_get_core_port_stats(MMAL_PORT_T *port,
                                            MMAL_CORE_STATS_DIR dir,
                                            MMAL_BOOL_T reset,
                                            MMAL_CORE_STATISTICS_T *stats)
{
   MMAL_PARAMETER_CORE_STATISTICS_T param;
   MMAL_STATUS_T ret;

   memset(&param, 0, sizeof(param));
   param.hdr.id = MMAL_PARAMETER_CORE_STATISTICS;
   param.hdr.size = sizeof(param);
   param.dir = dir;
   param.reset = reset;

   ret = mmal_port_parameter_get(port, &param.hdr);
   if (ret == MMAL_SUCCESS)
      *stats = param.stats;
   return ret;
}
