
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int duration; } ;
typedef TYPE_1__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 unsigned int MP4_64BITS_TIME ;
 int MP4_TIMESCALE ;
 int STREAM_STATUS (TYPE_1__*) ;
 int WRITE_U16 (TYPE_1__*,int,char*) ;
 int WRITE_U24 (TYPE_1__*,int ,char*) ;
 int WRITE_U32 (TYPE_1__*,int,char*) ;
 int WRITE_U64 (TYPE_1__*,int,char*) ;
 int WRITE_U8 (TYPE_1__*,unsigned int,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_mdhd( VC_CONTAINER_T *p_ctx )
{
   unsigned int version = MP4_64BITS_TIME;

   WRITE_U8(p_ctx, version, "version");
   WRITE_U24(p_ctx, 0, "flags");


   if(version)
   {
      WRITE_U64(p_ctx, 0, "creation_time");
      WRITE_U64(p_ctx, 0, "modification_time");
      WRITE_U32(p_ctx, MP4_TIMESCALE, "timescale");
      WRITE_U64(p_ctx, p_ctx->duration * MP4_TIMESCALE / 1000000, "duration");
   }
   else
   {
      WRITE_U32(p_ctx, 0, "creation_time");
      WRITE_U32(p_ctx, 0, "modification_time");
      WRITE_U32(p_ctx, MP4_TIMESCALE, "timescale");
      WRITE_U32(p_ctx, p_ctx->duration * MP4_TIMESCALE / 1000000, "duration");
   }

   WRITE_U16(p_ctx, 0x55c4, "language");
   WRITE_U16(p_ctx, 0, "pre_defined");

   return STREAM_STATUS(p_ctx);
}
