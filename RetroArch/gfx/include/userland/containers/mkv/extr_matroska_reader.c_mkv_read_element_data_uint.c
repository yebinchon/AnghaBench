
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int READ_U16 (int *,char*) ;
 int READ_U24 (int *,char*) ;
 int READ_U32 (int *,char*) ;
 int READ_U40 (int *,char*) ;
 int READ_U48 (int *,char*) ;
 int READ_U56 (int *,char*) ;
 int READ_U64 (int *,char*) ;
 int READ_U8 (int *,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_CORRUPTED ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_read_element_data_uint(VC_CONTAINER_T *p_ctx,
   int64_t size, uint64_t *value)
{
   switch(size)
   {
   case 1: *value = READ_U8(p_ctx, "u8-integer"); break;
   case 2: *value = READ_U16(p_ctx, "u16-integer"); break;
   case 3: *value = READ_U24(p_ctx, "u24-integer"); break;
   case 4: *value = READ_U32(p_ctx, "u32-integer"); break;
   case 5: *value = READ_U40(p_ctx, "u40-integer"); break;
   case 6: *value = READ_U48(p_ctx, "u48-integer"); break;
   case 7: *value = READ_U56(p_ctx, "u56-integer"); break;
   case 8: *value = READ_U64(p_ctx, "u64-integer"); break;
   default: return VC_CONTAINER_ERROR_CORRUPTED;
   }
   return STREAM_STATUS(p_ctx);
}
