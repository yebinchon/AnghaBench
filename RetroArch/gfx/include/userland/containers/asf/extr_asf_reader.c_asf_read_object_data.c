
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_18__ {TYPE_2__* priv; } ;
typedef TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_19__ {unsigned int tracks_num; TYPE_5__** tracks; TYPE_4__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_16__ {int start; } ;
struct TYPE_20__ {TYPE_3__ packet_state; int data_offset; } ;
typedef TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_17__ {TYPE_7__* module; } ;
struct TYPE_15__ {TYPE_1__* module; } ;
struct TYPE_14__ {TYPE_3__* p_packet_state; } ;


 int SKIP_GUID (TYPE_6__*,char*) ;
 int SKIP_U16 (TYPE_6__*,char*) ;
 int SKIP_U64 (TYPE_6__*,char*) ;
 int STREAM_POSITION (TYPE_6__*) ;
 int STREAM_STATUS (TYPE_6__*) ;
 int VC_CONTAINER_PARAM_UNUSED (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_object_data( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   unsigned int i;
   VC_CONTAINER_PARAM_UNUSED(size);

   SKIP_GUID(p_ctx, "File ID");
   SKIP_U64(p_ctx, "Total Data Packets");
   SKIP_U16(p_ctx, "Reserved");
   module->data_offset = STREAM_POSITION(p_ctx);


   module->packet_state.start = module->data_offset;
   for(i = 0; i < p_ctx->tracks_num; i++)
   {
      VC_CONTAINER_TRACK_T *p_track = p_ctx->tracks[i];
      p_track->priv->module->p_packet_state = &module->packet_state;
   }

   return STREAM_STATUS(p_ctx);
}
