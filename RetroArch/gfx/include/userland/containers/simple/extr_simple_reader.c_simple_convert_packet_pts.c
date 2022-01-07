
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_9__ {TYPE_3__** tracks; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* module; } ;
struct TYPE_6__ {scalar_t__ variant; } ;


 scalar_t__ VARIANT_OMX ;
 int VC_CONTAINER_TIME_UNKNOWN ;

__attribute__((used)) static int64_t simple_convert_packet_pts(VC_CONTAINER_T *ctx,
   unsigned int track_num, int64_t pts, uint32_t flags)
{
   if (ctx->tracks[track_num]->priv->module->variant == VARIANT_OMX &&
       flags & 0x100)
      return VC_CONTAINER_TIME_UNKNOWN;

   return pts;
}
