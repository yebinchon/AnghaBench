
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_27__ {TYPE_6__* sample_table; } ;
typedef TYPE_7__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_28__ {TYPE_3__** tracks; TYPE_1__* priv; } ;
typedef TYPE_8__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_29__ {size_t track; int flags; } ;
typedef TYPE_9__ VC_CONTAINER_PACKET_T ;
struct TYPE_25__ {int io; } ;
struct TYPE_24__ {scalar_t__ refcount; } ;
struct TYPE_20__ {size_t current_track; TYPE_5__ temp; TYPE_4__ null; } ;
typedef TYPE_10__ VC_CONTAINER_MODULE_T ;
struct TYPE_26__ {unsigned int entries; } ;
struct TYPE_23__ {TYPE_2__* priv; } ;
struct TYPE_22__ {TYPE_7__* module; } ;
struct TYPE_21__ {TYPE_10__* module; } ;


 int INT64_C (int ) ;
 size_t MP4_SAMPLE_TABLE_STSS ;
 scalar_t__ STREAM_STATUS (TYPE_8__*) ;
 int VC_CONTAINER_PACKET_FLAG_KEYFRAME ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int WRITE_BYTES (TYPE_8__*,int ,int) ;
 int WRITE_U24 (TYPE_8__*,int ,char*) ;
 int WRITE_U32 (TYPE_8__*,unsigned int,char*) ;
 int WRITE_U8 (TYPE_8__*,int ,char*) ;
 int memset (TYPE_9__*,int ,int) ;
 scalar_t__ mp4_writer_read_sample_from_temp (TYPE_8__*,TYPE_9__*) ;
 int vc_container_assert (int) ;
 int vc_container_io_seek (int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_stss( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_MODULE_T *track_module = p_ctx->tracks[module->current_track]->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_PACKET_T sample;
   unsigned int entries = 0, samples = 0;

   memset(&sample, 0, sizeof(VC_CONTAINER_PACKET_T));

   WRITE_U8(p_ctx, 0, "version");
   WRITE_U24(p_ctx, 0, "flags");
   WRITE_U32(p_ctx, track_module->sample_table[MP4_SAMPLE_TABLE_STSS].entries, "entry_count");

   if(module->null.refcount)
   {

      WRITE_BYTES(p_ctx, 0, track_module->sample_table[MP4_SAMPLE_TABLE_STSS].entries * 4);
      return STREAM_STATUS(p_ctx);
   }


   vc_container_io_seek(module->temp.io, INT64_C(0));

   status = mp4_writer_read_sample_from_temp(p_ctx, &sample);
   while(status == VC_CONTAINER_SUCCESS)
   {
      if(sample.track != module->current_track) goto skip;

      samples++;
      if(sample.flags & VC_CONTAINER_PACKET_FLAG_KEYFRAME)
      {
         WRITE_U32(p_ctx, samples, "sample_number");
         entries++;
      }

     skip:
      status = mp4_writer_read_sample_from_temp(p_ctx, &sample);
   }
   vc_container_assert(entries == track_module->sample_table[MP4_SAMPLE_TABLE_STSS].entries);

   return STREAM_STATUS(p_ctx);
}
