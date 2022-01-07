
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {TYPE_2__* sample_table; } ;
typedef TYPE_6__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_21__ {TYPE_5__** tracks; TYPE_3__* priv; } ;
typedef TYPE_7__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_15__ {scalar_t__ refcount; } ;
struct TYPE_22__ {size_t current_track; TYPE_1__ null; } ;
typedef TYPE_8__ VC_CONTAINER_MODULE_T ;
struct TYPE_19__ {TYPE_4__* priv; } ;
struct TYPE_18__ {TYPE_6__* module; } ;
struct TYPE_17__ {TYPE_8__* module; } ;
struct TYPE_16__ {int entries; } ;


 size_t MP4_SAMPLE_TABLE_CO64 ;
 int STREAM_STATUS (TYPE_7__*) ;
 int WRITE_BYTES (TYPE_7__*,int ,int) ;
 int WRITE_U24 (TYPE_7__*,int ,char*) ;
 int WRITE_U32 (TYPE_7__*,int,char*) ;
 int WRITE_U8 (TYPE_7__*,int ,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_co64( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_MODULE_T *track_module = p_ctx->tracks[module->current_track]->priv->module;

   WRITE_U8(p_ctx, 0, "version");
   WRITE_U24(p_ctx, 0, "flags");
   WRITE_U32(p_ctx, track_module->sample_table[MP4_SAMPLE_TABLE_CO64].entries, "entry_count");

   if(module->null.refcount)
   {

      WRITE_BYTES(p_ctx, 0, track_module->sample_table[MP4_SAMPLE_TABLE_CO64].entries * 8);
      return STREAM_STATUS(p_ctx);
   }

   return STREAM_STATUS(p_ctx);
}
