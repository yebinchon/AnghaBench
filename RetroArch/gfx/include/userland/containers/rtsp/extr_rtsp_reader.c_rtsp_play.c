
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {int header_list; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_7__ {TYPE_3__* module; } ;


 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ rtsp_read_response (TYPE_2__*) ;
 scalar_t__ rtsp_send_play_request (TYPE_2__*,int *) ;
 int rtsp_store_rtp_info (int ,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_play( VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_MODULE_T *t_module )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;

   status = rtsp_send_play_request(p_ctx, t_module);
   if (status != VC_CONTAINER_SUCCESS) return status;
   status = rtsp_read_response(p_ctx);
   if (status != VC_CONTAINER_SUCCESS) return status;

   rtsp_store_rtp_info(module->header_list, t_module);

   return status;
}
