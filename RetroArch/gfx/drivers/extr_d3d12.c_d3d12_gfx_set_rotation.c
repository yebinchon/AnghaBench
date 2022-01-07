
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int math_matrix_4x4 ;
struct TYPE_6__ {unsigned int rotation; int ubo; } ;
struct TYPE_7__ {TYPE_1__ frame; int mvp; int mvp_no_rot; } ;
typedef TYPE_2__ d3d12_video_t ;
struct TYPE_8__ {int member_1; int member_0; } ;
typedef TYPE_3__ D3D12_RANGE ;


 int D3D12Map (int ,int ,TYPE_3__*,void**) ;
 int D3D12Unmap (int ,int ,int *) ;
 float M_PI ;
 int d3d12_gfx_sync (TYPE_2__*) ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_rotate_z (int ,float) ;

__attribute__((used)) static void d3d12_gfx_set_rotation(void* data, unsigned rotation)
{
   math_matrix_4x4 rot;
   math_matrix_4x4* mvp;
   D3D12_RANGE read_range = { 0, 0 };
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   if (!d3d12)
      return;

   d3d12_gfx_sync(d3d12);
   d3d12->frame.rotation = rotation;

   matrix_4x4_rotate_z(rot, d3d12->frame.rotation * (M_PI / 2.0f));
   matrix_4x4_multiply(d3d12->mvp, rot, d3d12->mvp_no_rot);

   D3D12Map(d3d12->frame.ubo, 0, &read_range, (void**)&mvp);
   *mvp = d3d12->mvp;
   D3D12Unmap(d3d12->frame.ubo, 0, ((void*)0));
}
