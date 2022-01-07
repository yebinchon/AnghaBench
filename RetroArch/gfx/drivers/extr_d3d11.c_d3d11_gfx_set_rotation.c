
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int math_matrix_4x4 ;
struct TYPE_7__ {int ubo; } ;
struct TYPE_6__ {int mvp; } ;
struct TYPE_8__ {TYPE_2__ frame; int context; int mvp; TYPE_1__ ubo_values; } ;
typedef TYPE_3__ d3d11_video_t ;
struct TYPE_9__ {scalar_t__ pData; } ;
typedef TYPE_4__ D3D11_MAPPED_SUBRESOURCE ;


 int D3D11MapBuffer (int ,int ,int ,int ,int ,TYPE_4__*) ;
 int D3D11UnmapBuffer (int ,int ,int ) ;
 int D3D11_MAP_WRITE_DISCARD ;
 float M_PI ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_rotate_z (int ,unsigned int) ;

__attribute__((used)) static void d3d11_gfx_set_rotation(void* data, unsigned rotation)
{
   math_matrix_4x4 rot;
   D3D11_MAPPED_SUBRESOURCE mapped_ubo;
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;

   if (!d3d11)
      return;

   matrix_4x4_rotate_z(rot, rotation * (M_PI / 2.0f));
   matrix_4x4_multiply(d3d11->mvp, rot, d3d11->ubo_values.mvp);

   D3D11MapBuffer(d3d11->context, d3d11->frame.ubo, 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped_ubo);
   *(math_matrix_4x4*)mapped_ubo.pData = d3d11->mvp;
   D3D11UnmapBuffer(d3d11->context, d3d11->frame.ubo, 0);
}
