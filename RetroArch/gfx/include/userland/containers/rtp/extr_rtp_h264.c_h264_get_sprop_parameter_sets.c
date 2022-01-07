
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {TYPE_2__* priv; TYPE_1__* format; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_BITS_T ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_12__ {char* name; char* value; } ;
struct TYPE_10__ {int * extradata; } ;
struct TYPE_9__ {int extradata_size; } ;
typedef TYPE_4__ PARAMETER_T ;


 int BITS_INIT (int *,int *,int *,int) ;
 int LOG_ERROR (int *,char*) ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ h264_decode_sprop (int *,TYPE_3__*,int *) ;
 int h264_remove_emulation_prevention_bytes (int *,int) ;
 int rtp_base64_byte_length (char const*,size_t) ;
 int * rtp_base64_decode (char const*,size_t,int *,int) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ vc_container_track_allocate_extradata (int *,TYPE_3__*,int) ;
 int vc_containers_list_find_entry (int const*,TYPE_4__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T h264_get_sprop_parameter_sets(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *params)
{
   VC_CONTAINER_STATUS_T status;
   PARAMETER_T param;
   size_t str_len;
   uint32_t extradata_size = 0;
   uint8_t *sprop;
   const char *set;
   const char *comma;





   param.name = "sprop-parameter-sets";
   if (!vc_containers_list_find_entry(params, &param) || !param.value)
   {
      LOG_ERROR(p_ctx, "H.264: sprop-parameter-sets is required, but not found");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }


   set = param.value;
   do {
      comma = strchr(set, ',');
      str_len = comma ? (size_t)(comma - set) : strlen(set);

      extradata_size += rtp_base64_byte_length(set, str_len) + 4;
      set = comma + 1;
   } while (comma);

   if (!extradata_size)
   {
      LOG_ERROR(p_ctx, "H.264: sprop-parameter-sets doesn't contain useful data");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   status = vc_container_track_allocate_extradata(p_ctx, track, extradata_size);
   if(status != VC_CONTAINER_SUCCESS) return status;

   track->format->extradata_size = extradata_size;
   sprop = track->priv->extradata;


   set = param.value;
   do {
      uint8_t *next_sprop;
      uint32_t sprop_size;
      VC_CONTAINER_BITS_T sprop_stream;

      comma = strchr(set, ',');
      str_len = comma ? (size_t)(comma - set) : strlen(set);


      *sprop++ = 0x00; *sprop++ = 0x00; *sprop++ = 0x00; *sprop++ = 0x01;
      extradata_size -= 4;

      next_sprop = rtp_base64_decode(set, str_len, sprop, extradata_size);
      if (!next_sprop)
      {
         LOG_ERROR(p_ctx, "H.264: sprop-parameter-sets failed to decode");
         return VC_CONTAINER_ERROR_FORMAT_INVALID;
      }

      sprop_size = next_sprop - sprop;
      if (sprop_size)
      {
         uint32_t new_sprop_size;


         new_sprop_size = h264_remove_emulation_prevention_bytes(sprop, sprop_size);

         BITS_INIT(p_ctx, &sprop_stream, sprop, new_sprop_size);
         status = h264_decode_sprop(p_ctx, track, &sprop_stream);
         if(status != VC_CONTAINER_SUCCESS) return status;


         if (new_sprop_size != sprop_size)
            rtp_base64_decode(set, str_len, sprop, sprop_size);

         extradata_size -= sprop_size;
         sprop = next_sprop;
      }

      set = comma + 1;
   } while (comma);

   return VC_CONTAINER_SUCCESS;
}
