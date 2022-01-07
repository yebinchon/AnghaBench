
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int MP4_BOX_TYPE_T ;


 int mp4_write_box_extended (int *,int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box( VC_CONTAINER_T *p_ctx, MP4_BOX_TYPE_T type )
{
   return mp4_write_box_extended( p_ctx, type, type );
}
