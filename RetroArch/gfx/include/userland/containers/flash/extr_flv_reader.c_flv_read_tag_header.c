
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int READ_U24 (int *,char*) ;
 int READ_U32 (int *,char*) ;
 int READ_U8 (int *,char*) ;
 int SKIP_U24 (int *,char*) ;
 int STREAM_STATUS (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T flv_read_tag_header(VC_CONTAINER_T *p_ctx, int *p_prev_size,
                                                 int *p_type, int *p_size, uint32_t *p_timestamp)
{
   int prev_size, type, size;
   uint32_t timestamp;

   prev_size = READ_U32(p_ctx, "PreviousTagSize");
   type = READ_U8(p_ctx, "TagType");
   size = READ_U24(p_ctx, "DataSize");
   timestamp = READ_U24(p_ctx, "Timestamp");
   timestamp |= (READ_U8(p_ctx, "TimestampExtended") << 24);
   SKIP_U24(p_ctx, "StreamID");

   if(p_prev_size) *p_prev_size = prev_size + 4;
   if(p_type) *p_type = type;
   if(p_size) *p_size = size;
   if(p_timestamp) *p_timestamp = timestamp;

   return STREAM_STATUS(p_ctx);
}
