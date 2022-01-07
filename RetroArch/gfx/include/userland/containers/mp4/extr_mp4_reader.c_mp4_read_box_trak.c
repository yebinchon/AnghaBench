
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_18__ {int is_enabled; TYPE_5__* format; TYPE_4__* priv; } ;
typedef TYPE_6__ VC_CONTAINER_TRACK_T ;
struct TYPE_19__ {size_t tracks_num; TYPE_6__** tracks; TYPE_1__* priv; } ;
typedef TYPE_7__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_20__ {int current_track; } ;
typedef TYPE_8__ VC_CONTAINER_MODULE_T ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {TYPE_3__* module; } ;
struct TYPE_15__ {TYPE_2__* sample_table; } ;
struct TYPE_14__ {int entry_size; } ;
struct TYPE_13__ {TYPE_8__* module; } ;


 int MP4_BOX_TYPE_TRAK ;
 size_t MP4_SAMPLE_TABLE_CO64 ;
 size_t MP4_SAMPLE_TABLE_CTTS ;
 size_t MP4_SAMPLE_TABLE_STCO ;
 size_t MP4_SAMPLE_TABLE_STSC ;
 size_t MP4_SAMPLE_TABLE_STSS ;
 size_t MP4_SAMPLE_TABLE_STSZ ;
 size_t MP4_SAMPLE_TABLE_STTS ;
 size_t MP4_TRACKS_MAX ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ERROR_OUT_OF_RESOURCES ;
 int VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ;
 int VC_CONTAINER_SUCCESS ;
 int mp4_read_boxes (TYPE_7__*,int ,int ) ;
 TYPE_6__* vc_container_allocate_track (TYPE_7__*,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_trak( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track;


   if(p_ctx->tracks_num >= MP4_TRACKS_MAX) return VC_CONTAINER_ERROR_OUT_OF_RESOURCES;
   p_ctx->tracks[p_ctx->tracks_num] = track =
      vc_container_allocate_track(p_ctx, sizeof(*p_ctx->tracks[0]->priv->module));
   if(!track) return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STTS].entry_size = 8;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STSZ].entry_size = 4;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STSC].entry_size = 12;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STCO].entry_size = 4;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_STSS].entry_size = 4;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_CO64].entry_size = 8;
   track->priv->module->sample_table[MP4_SAMPLE_TABLE_CTTS].entry_size = 8;

   status = mp4_read_boxes( p_ctx, size, MP4_BOX_TYPE_TRAK);



   track->is_enabled = 1;
   track->format->flags |= VC_CONTAINER_ES_FORMAT_FLAG_FRAMED;
   module->current_track++;
   p_ctx->tracks_num++;

   return status;
}
