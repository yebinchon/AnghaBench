
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int LOG_FORMAT (int *,char*,double) ;
 int READ_U32 (int *,char*) ;
 int READ_U64 (int *,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_CORRUPTED ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mkv_read_element_data_float(VC_CONTAINER_T *p_ctx,
   int64_t size, double *value)
{
   union {
      uint32_t u32;
      uint64_t u64;
      float f;
      double d;
   } u;

   switch(size)
   {
   case 4: u.u32 = READ_U32(p_ctx, "f32-float"); *value = u.f; break;
   case 8: u.u64 = READ_U64(p_ctx, "f64-float"); *value = u.d; break;
   default: return VC_CONTAINER_ERROR_CORRUPTED;
   }
   LOG_FORMAT(p_ctx, "float: %f", *value);
   return STREAM_STATUS(p_ctx);
}
