
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int math_matrix_4x4 ;
struct TYPE_4__ {int ubo; } ;
struct TYPE_5__ {int mvp; } ;
struct TYPE_6__ {TYPE_1__ frame; int mvp; TYPE_2__ ubo_values; } ;
typedef TYPE_3__ d3d10_video_t ;


 int D3D10MapBuffer (int ,int ,int ,void**) ;
 int D3D10UnmapBuffer (int ) ;
 int D3D10_MAP_WRITE_DISCARD ;
 float M_PI ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_rotate_z (int ,unsigned int) ;

__attribute__((used)) static void d3d10_gfx_set_rotation(void* data, unsigned rotation)
{
   math_matrix_4x4 rot;
   void* mapped_ubo = ((void*)0);
   d3d10_video_t* d3d10 = (d3d10_video_t*)data;

   if (!d3d10)
      return;

   matrix_4x4_rotate_z(rot, rotation * (M_PI / 2.0f));
   matrix_4x4_multiply(d3d10->mvp, rot, d3d10->ubo_values.mvp);

   D3D10MapBuffer(d3d10->frame.ubo, D3D10_MAP_WRITE_DISCARD, 0, &mapped_ubo);
   *(math_matrix_4x4*)mapped_ubo = d3d10->mvp;
   D3D10UnmapBuffer(d3d10->frame.ubo);
}
