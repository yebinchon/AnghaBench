
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_FOURCC_T ;


 scalar_t__ ID3_SYNC_SAFE (scalar_t__) ;
 int LOG_DEBUG (int *,char*,...) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int PEEK_BYTES (int *,int*,int) ;
 int READ_FOURCC (int *,char*) ;
 scalar_t__ READ_U32 (int *,char*) ;
 int READ_U8 (int *,char*) ;
 int SKIP_BYTES (int *,scalar_t__) ;
 int SKIP_STRING (int *,int,char*) ;
 int SKIP_U8 (int *,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;
 int id3_read_id3v2_frame (int *,int ,scalar_t__) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T id3_read_id3v2_tag( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   uint8_t maj_version, flags;
   uint32_t tag_size, size = 0;
   uint8_t peek_buf[10];

   SKIP_STRING(p_ctx, 3, "ID3v2 identifier");
   maj_version = READ_U8(p_ctx, "ID3v2 version (major)");
   SKIP_U8(p_ctx, "ID3v2 version (minor)");
   flags = READ_U8(p_ctx, "ID3v2 flags");
   tag_size = READ_U32(p_ctx, "ID3v2 syncsafe tag size");
   tag_size = ID3_SYNC_SAFE(tag_size);
   LOG_DEBUG(p_ctx, "ID3v2 tag size: %d", tag_size);


   if (!(maj_version == 4 || maj_version == 3 || maj_version == 2))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;


   if ((flags >> 7) & 1)
   {
      LOG_DEBUG(p_ctx, "skipping unsynchronised tag, not supported");
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   }


   if (maj_version == 2) return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   if ((flags >> 6) & 1)
   {

      uint32_t ext_hdr_size;
      LOG_DEBUG(p_ctx, "skipping ID3v2 extended header, not supported");
      ext_hdr_size = READ_U32(p_ctx, "ID3v2 syncsafe extended header size");
      ext_hdr_size = ID3_SYNC_SAFE(ext_hdr_size);
      LOG_DEBUG(p_ctx, "ID3v2 extended header size: %d", ext_hdr_size);
      SKIP_BYTES(p_ctx, MIN(tag_size, ext_hdr_size));
      size += ext_hdr_size;
   }

   while (PEEK_BYTES(p_ctx, peek_buf, 10) == 10 && size < tag_size)
   {
      VC_CONTAINER_FOURCC_T frame_id;
      uint32_t frame_size;
      uint8_t format_flags;

      frame_id = READ_FOURCC(p_ctx, "Frame ID");
      frame_size = READ_U32(p_ctx, "Frame Size");

      if (maj_version >= 4)
      {
         frame_size = ID3_SYNC_SAFE(frame_size);
         LOG_DEBUG(p_ctx, "ID3v2 actual frame size: %d", frame_size);
      }

      SKIP_U8(p_ctx, "ID3v2 status message flags");
      format_flags = READ_U8(p_ctx, "ID3v2 format description flags");

      size += 10;

      if((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS || !frame_id)
         break;


      if (size + frame_size > tag_size)
      {
         status = VC_CONTAINER_ERROR_FORMAT_INVALID;
         break;
      }


      if ((format_flags >> 1) & 1)
      {
         LOG_DEBUG(p_ctx, "skipping unsynchronised frame, not supported");
         SKIP_BYTES(p_ctx, frame_size);
         continue;
      }

      if ((status = id3_read_id3v2_frame(p_ctx, frame_id, frame_size)) != VC_CONTAINER_SUCCESS)
      {
         LOG_DEBUG(p_ctx, "skipping unsupported frame");
         SKIP_BYTES(p_ctx, frame_size);
      }

      size += frame_size;
   }


   if (size < tag_size) SKIP_BYTES(p_ctx, tag_size - size);

   return status;
}
