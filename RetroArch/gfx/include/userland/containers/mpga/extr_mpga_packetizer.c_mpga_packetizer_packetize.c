
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_PACKETIZER_T ;
struct TYPE_9__ {int state; unsigned int version; unsigned int layer; unsigned int stream_version; unsigned int stream_layer; int frame_size_samples; scalar_t__ frame_size; scalar_t__ bytes_read; int sample_rate; scalar_t__ offset; int lost_sync; int channels; int frame_bitrate; } ;
typedef TYPE_3__ VC_PACKETIZER_MODULE_T ;
typedef int VC_PACKETIZER_FLAGS_T ;
typedef int VC_CONTAINER_TIME_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {scalar_t__ size; int data; int buffer_size; int flags; int dts; int pts; } ;
typedef TYPE_4__ VC_CONTAINER_PACKET_T ;
typedef int VC_CONTAINER_BYTESTREAM_T ;
struct TYPE_7__ {int time; int stream; TYPE_3__* module; } ;


 int LOG_DEBUG (int ,char*,...) ;
 int LOG_ERROR (int ,char*) ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int MPGA_HEADER_SIZE ;






 int VC_CONTAINER_ERROR_INCOMPLETE_DATA ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_END ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_START ;
 int VC_CONTAINER_SUCCESS ;
 int VC_CONTAINER_TIME_UNKNOWN ;
 int VC_PACKETIZER_FLAG_FLUSH ;
 int VC_PACKETIZER_FLAG_INFO ;
 int VC_PACKETIZER_FLAG_SKIP ;
 int bytestream_get (int *,int ,scalar_t__) ;
 int bytestream_get_timestamps (int *,int *,int *,int) ;
 int bytestream_peek (int *,int*,int) ;
 int bytestream_peek_at (int *,scalar_t__,int*,int) ;
 scalar_t__ bytestream_size (int *) ;
 int bytestream_skip (int *,scalar_t__) ;
 int bytestream_skip_byte (int *) ;
 int mpga_read_header (int*,scalar_t__*,int *,unsigned int*,unsigned int*,int *,int *,int *,scalar_t__*) ;
 int vc_container_time_add (int *,int ) ;
 int vc_container_time_get (int *) ;
 int vc_container_time_set (int *,int ) ;
 int vc_container_time_set_samplerate (int *,int ,int) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mpga_packetizer_packetize( VC_PACKETIZER_T *p_ctx,
   VC_CONTAINER_PACKET_T *out, VC_PACKETIZER_FLAGS_T flags )
{
   VC_PACKETIZER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_BYTESTREAM_T *stream = &p_ctx->priv->stream;
   VC_CONTAINER_TIME_T *time = &p_ctx->priv->time;
   uint8_t header[MPGA_HEADER_SIZE];
   VC_CONTAINER_STATUS_T status;
   unsigned int version, layer;
   int64_t pts, dts;

   while(1) switch (module->state)
   {
   case 129:
      bytestream_skip_byte( stream );
      if( !module->lost_sync++ )
         LOG_DEBUG(0, "lost sync");
      module->state = 131;

   case 131:
      while( bytestream_peek( stream, header, 2 ) == VC_CONTAINER_SUCCESS )
      {

          if( header[0] == 0xff && (header[1] & 0xe0) == 0xe0 )
          {
             module->state = 132;
             break;
          }
          bytestream_skip_byte( stream );
          module->lost_sync++;
      }
      if( module->state != 132 )
         return VC_CONTAINER_ERROR_INCOMPLETE_DATA;

   case 132:
      if( bytestream_peek( stream, header, MPGA_HEADER_SIZE ) != VC_CONTAINER_SUCCESS )
         return VC_CONTAINER_ERROR_INCOMPLETE_DATA;

      status = mpga_read_header( header,
         &module->frame_size, &module->frame_bitrate, &module->version,
         &module->layer, &module->sample_rate, &module->channels,
         &module->frame_size_samples, &module->offset );
      if (status != VC_CONTAINER_SUCCESS)
      {
         LOG_ERROR(0, "invalid header");
         module->state = 129;
         break;
      }


      if ((module->stream_version && module->stream_version != module->version) ||
          (module->stream_layer && module->stream_layer != module->layer))
      {
         LOG_ERROR(0, "invalid header");
         module->state = 129;
         break;
      }

      if (!module->frame_size)
      {
         LOG_ERROR(0, "free format not supported");
         module->state = 129;
         break;
      }
      module->state = 128;


   case 128:

      if( bytestream_peek_at( stream, module->frame_size, header, MPGA_HEADER_SIZE ) != VC_CONTAINER_SUCCESS )
      {


         if (flags & VC_PACKETIZER_FLAG_FLUSH)
         {
            module->state = 130;
            break;
         }
         return VC_CONTAINER_ERROR_INCOMPLETE_DATA;
      }

      status = mpga_read_header( header, 0, 0, &version, &layer, 0, 0, 0, 0 );
      if (status != VC_CONTAINER_SUCCESS)
      {
         LOG_ERROR(0, "invalid next header");
         module->state = 129;
         break;
      }


      if (module->version != version || module->layer != layer)
      {
         LOG_ERROR(0, "invalid header");
         module->state = 129;
         break;
      }

      module->state = 130;


   case 130:
      if( module->lost_sync )
         LOG_DEBUG(0, "recovered sync after %i bytes", module->lost_sync);
      module->lost_sync = 0;

      bytestream_skip( stream, module->offset );
      module->stream_version = module->version;
      module->stream_layer = module->layer;

      vc_container_time_set_samplerate(time, module->sample_rate, 1);
      bytestream_get_timestamps(stream, &pts, &dts, 1);

      vc_container_time_set(time, pts);

      module->bytes_read = 0;
      module->state = 133;


   case 133:
      if( bytestream_size( stream ) < module->frame_size)
         return VC_CONTAINER_ERROR_INCOMPLETE_DATA;

      out->size = module->frame_size - module->bytes_read;
      out->pts = out->dts = VC_CONTAINER_TIME_UNKNOWN;
      out->flags = VC_CONTAINER_PACKET_FLAG_FRAME_END;

      if(!module->bytes_read)
      {
         out->pts = out->dts = vc_container_time_get(time);
         out->flags |= VC_CONTAINER_PACKET_FLAG_FRAME_START;
      }

      if(flags & VC_PACKETIZER_FLAG_INFO)
         return VC_CONTAINER_SUCCESS;

      if(flags & VC_PACKETIZER_FLAG_SKIP)
      {
         bytestream_skip( stream, out->size );
      }
      else
      {
         out->size = MIN(out->size, out->buffer_size);
         bytestream_get( stream, out->data, out->size );
      }
      module->bytes_read += out->size;

      if(module->bytes_read == module->frame_size)
      {
         vc_container_time_add(time, module->frame_size_samples);
         module->state = 132;
      }
      return VC_CONTAINER_SUCCESS;

   default:
      break;
   };

   return VC_CONTAINER_SUCCESS;
}
