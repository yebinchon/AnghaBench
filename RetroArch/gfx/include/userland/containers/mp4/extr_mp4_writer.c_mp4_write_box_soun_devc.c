
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int STREAM_STATUS (int *) ;
 int VC_FOURCC (char,char,char,char) ;
 int WRITE_FOURCC (int *,int ,char*) ;
 int WRITE_U32 (int *,int,char*) ;
 int WRITE_U8 (int *,int,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_soun_devc( VC_CONTAINER_T *p_ctx )
{
   WRITE_U32(p_ctx, 8 + 6, "size");
   WRITE_FOURCC(p_ctx, VC_FOURCC('d','e','v','c'), "type");
   WRITE_FOURCC(p_ctx, VC_FOURCC('B','R','C','M'), "vendor");
   WRITE_U8(p_ctx, 0, "version");
   WRITE_U8(p_ctx, 1, "samples_per_frame");

   return STREAM_STATUS(p_ctx);
}
