
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int line ;
struct TYPE_12__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {int flags; int frame_size; int size; char* data; } ;
typedef TYPE_3__ VC_CONTAINER_PACKET_T ;
struct TYPE_14__ {scalar_t__ non_standard; scalar_t__ yuv4mpeg2; int header_done; } ;
typedef TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_11__ {TYPE_4__* module; } ;


 scalar_t__ STREAM_STATUS (TYPE_2__*) ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_START ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int WRITE_BYTES (TYPE_2__*,char*,unsigned int) ;
 int _WRITE_U8 (TYPE_2__*,int) ;
 scalar_t__ rawvideo_write_header (TYPE_2__*) ;
 unsigned int snprintf (char*,int,char*,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rawvideo_writer_write( VC_CONTAINER_T *ctx,
   VC_CONTAINER_PACKET_T *packet )
{
   VC_CONTAINER_MODULE_T *module = ctx->priv->module;
   VC_CONTAINER_STATUS_T status;

   if (module->yuv4mpeg2 && !module->header_done)
   {
      status = rawvideo_write_header(ctx);
      if (status != VC_CONTAINER_SUCCESS)
         return status;
   }

   if (module->yuv4mpeg2 &&
       (packet->flags & VC_CONTAINER_PACKET_FLAG_FRAME_START))
   {

      WRITE_BYTES(ctx, "FRAME", sizeof("FRAME")-1);



      if (module->non_standard)
      {
         unsigned int size;
         char line[32];
         size = snprintf(line, sizeof(line), " S%i",
            packet->frame_size ? packet->frame_size : packet->size);
         if (size < sizeof(line))
            WRITE_BYTES(ctx, line, size);
      }

      _WRITE_U8(ctx, 0x0a);
   }


   WRITE_BYTES(ctx, packet->data, packet->size);

   return STREAM_STATUS(ctx);
}
