
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
struct TYPE_4__ {void* verbosity; } ;


 void* verbosity_mask ;

void vc_container_log_set_verbosity(VC_CONTAINER_T *ctx, uint32_t mask)
{
   if(!ctx) verbosity_mask = mask;
   else ctx->priv->verbosity = mask;
}
