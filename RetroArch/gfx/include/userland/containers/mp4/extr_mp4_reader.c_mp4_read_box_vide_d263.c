
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int MP4_SKIP_FOURCC (int *,char*) ;
 int MP4_SKIP_U8 (int *,char*) ;
 int STREAM_STATUS (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_vide_d263( VC_CONTAINER_T *p_ctx, int64_t size )
{
   MP4_SKIP_FOURCC(p_ctx, "vendor");
   MP4_SKIP_U8(p_ctx, "version");
   MP4_SKIP_U8(p_ctx, "level");
   MP4_SKIP_U8(p_ctx, "profile");
   return STREAM_STATUS(p_ctx);
}
