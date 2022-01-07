
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int STREAM_STATUS (int *) ;
 int VC_FOURCC (unsigned char,char,char,char) ;
 int WRITE_FOURCC (int *,int ,char*) ;
 int WRITE_U24 (int *,int,char*) ;
 int WRITE_U32 (int *,int,char*) ;
 int WRITE_U8 (int *,int ,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_dref( VC_CONTAINER_T *p_ctx )
{
   WRITE_U8(p_ctx, 0, "version");
   WRITE_U24(p_ctx, 0, "flags");

   WRITE_U32(p_ctx, 1, "entry_count");


   WRITE_U32(p_ctx, 12, "box_size");
   WRITE_FOURCC(p_ctx, VC_FOURCC('u','r','l',' '), "box_type");
   WRITE_U8(p_ctx, 0, "version");
   WRITE_U24(p_ctx, 0x1, "flags");

   return STREAM_STATUS(p_ctx);
}
