
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int MP4_BOX_TYPE_STBL ;
 int mp4_read_boxes (int *,int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_read_box_stbl( VC_CONTAINER_T *p_ctx, int64_t size )
{
   return mp4_read_boxes( p_ctx, size, MP4_BOX_TYPE_STBL);
}
