
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int STREAM_STATUS (int *) ;
 int WRITE_U16 (int *,int ,char*) ;
 int WRITE_U24 (int *,int,char*) ;
 int WRITE_U8 (int *,int ,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_vmhd( VC_CONTAINER_T *p_ctx )
{
   WRITE_U8(p_ctx, 0, "version");
   WRITE_U24(p_ctx, 1, "flags");

   WRITE_U16(p_ctx, 0, "graphicsmode");
   WRITE_U16(p_ctx, 0, "opcolor");
   WRITE_U16(p_ctx, 0, "opcolor");
   WRITE_U16(p_ctx, 0, "opcolor");

   return STREAM_STATUS(p_ctx);
}
