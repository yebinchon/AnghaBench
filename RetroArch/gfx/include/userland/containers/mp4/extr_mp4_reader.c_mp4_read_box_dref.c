
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int MP4_SKIP_U24 (int *,char*) ;
 int MP4_SKIP_U32 (int *,char*) ;
 int MP4_SKIP_U8 (int *,char*) ;
 int STREAM_STATUS (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_dref( VC_CONTAINER_T *p_ctx, int64_t size )
{
   MP4_SKIP_U8(p_ctx, "version");
   MP4_SKIP_U24(p_ctx, "flags");

   MP4_SKIP_U32(p_ctx, "entry_count");

   return STREAM_STATUS(p_ctx);
}
