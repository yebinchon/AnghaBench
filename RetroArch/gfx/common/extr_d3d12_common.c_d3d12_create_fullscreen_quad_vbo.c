
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vertices ;
struct TYPE_12__ {float member_0; float member_1; float member_2; float member_3; } ;
struct TYPE_11__ {float member_0; float member_1; } ;
struct TYPE_10__ {float member_0; float member_1; } ;
struct TYPE_13__ {TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_4__ d3d12_vertex_t ;
struct TYPE_15__ {int member_1; int member_0; } ;
struct TYPE_14__ {int SizeInBytes; int StrideInBytes; int BufferLocation; } ;
typedef TYPE_5__ D3D12_VERTEX_BUFFER_VIEW ;
typedef TYPE_6__ D3D12_RANGE ;
typedef int D3D12Resource ;
typedef int D3D12Device ;


 int D3D12Map (int ,int ,TYPE_6__*,void**) ;
 int D3D12Unmap (int ,int ,int *) ;
 int d3d12_create_buffer (int ,int,int *) ;
 int memcpy (void*,TYPE_4__ const*,int) ;

void d3d12_create_fullscreen_quad_vbo(
      D3D12Device device, D3D12_VERTEX_BUFFER_VIEW* view, D3D12Resource* vbo)
{
   static const d3d12_vertex_t vertices[] = {
      { { 0.0f, 0.0f }, { 0.0f, 1.0f }, { 1.0f, 1.0f, 1.0f, 1.0f } },
      { { 0.0f, 1.0f }, { 0.0f, 0.0f }, { 1.0f, 1.0f, 1.0f, 1.0f } },
      { { 1.0f, 0.0f }, { 1.0f, 1.0f }, { 1.0f, 1.0f, 1.0f, 1.0f } },
      { { 1.0f, 1.0f }, { 1.0f, 0.0f }, { 1.0f, 1.0f, 1.0f, 1.0f } },
   };

   view->SizeInBytes = sizeof(vertices);
   view->StrideInBytes = sizeof(*vertices);
   view->BufferLocation = d3d12_create_buffer(device, view->SizeInBytes, vbo);

   {
      void* vertex_data_begin;
      D3D12_RANGE read_range = { 0, 0 };

      D3D12Map(*vbo, 0, &read_range, &vertex_data_begin);
      memcpy(vertex_data_begin, vertices, sizeof(vertices));
      D3D12Unmap(*vbo, 0, ((void*)0));
   }
}
