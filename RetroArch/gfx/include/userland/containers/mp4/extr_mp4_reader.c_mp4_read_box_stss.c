
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int MP4_READ_U32 (int *,char*) ;
 int MP4_SAMPLE_TABLE_STSS ;
 int MP4_SKIP_U24 (int *,char*) ;
 int MP4_SKIP_U8 (int *,char*) ;
 int mp4_cache_table (int *,int ,int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_stss( VC_CONTAINER_T *p_ctx, int64_t size )
{
   uint32_t entries;

   MP4_SKIP_U8(p_ctx, "version");
   MP4_SKIP_U24(p_ctx, "flags");

   entries = MP4_READ_U32(p_ctx, "entry_count");
   return mp4_cache_table( p_ctx, MP4_SAMPLE_TABLE_STSS, entries, size );
}
