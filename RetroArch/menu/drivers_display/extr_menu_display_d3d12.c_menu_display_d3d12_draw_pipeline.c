
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_28__ {scalar_t__ userdata; } ;
typedef TYPE_7__ video_frame_info_t ;
struct TYPE_23__ {int vertices; int vertex; } ;
struct TYPE_29__ {TYPE_2__ coords; } ;
typedef TYPE_8__ video_coord_array_t ;
struct TYPE_22__ {int id; } ;
struct TYPE_30__ {TYPE_4__* coords; TYPE_1__ pipeline; } ;
typedef TYPE_9__ menu_display_ctx_draw_t ;
struct TYPE_27__ {int BufferLocation; } ;
struct TYPE_26__ {int cmd; } ;
struct TYPE_19__ {float time; } ;
struct TYPE_21__ {int StrideInBytes; int SizeInBytes; int BufferLocation; } ;
struct TYPE_24__ {TYPE_17__ vbo_view; } ;
struct TYPE_18__ {TYPE_6__ ubo_view; TYPE_5__ queue; int ubo; TYPE_11__ ubo_values; TYPE_3__ frame; TYPE_17__ menu_pipeline_vbo_view; int menu_pipeline_vbo; int device; } ;
typedef TYPE_10__ d3d12_video_t ;
typedef TYPE_11__ d3d12_uniform_t ;
struct TYPE_25__ {int vertices; } ;
struct TYPE_20__ {int member_1; int member_0; } ;
typedef TYPE_12__ D3D12_RANGE ;


 int D3D12IASetPrimitiveTopology (int ,int ) ;
 int D3D12IASetVertexBuffers (int ,int ,int,TYPE_17__*) ;
 int D3D12Map (int ,int ,TYPE_12__*,void**) ;
 int D3D12SetGraphicsRootConstantBufferView (int ,int ,int ) ;
 int D3D12Unmap (int ,int ,int *) ;
 int D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP ;
 int ROOT_ID_UBO ;






 int d3d12_create_buffer (int ,int,int *) ;
 int memcpy (void*,int ,int) ;
 TYPE_8__* menu_display_get_coords_array () ;

__attribute__((used)) static void menu_display_d3d12_draw_pipeline(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   d3d12_video_t *d3d12 = (d3d12_video_t*)video_info->userdata;

   if (!d3d12 || !draw)
      return;

   switch (draw->pipeline.id)
   {
      case 133:
      case 132:
      {
         video_coord_array_t* ca = menu_display_get_coords_array();

         if (!d3d12->menu_pipeline_vbo)
         {
            void* vertex_data_begin;
            D3D12_RANGE read_range = { 0, 0 };

            d3d12->menu_pipeline_vbo_view.StrideInBytes = 2 * sizeof(float);
            d3d12->menu_pipeline_vbo_view.SizeInBytes =
                  ca->coords.vertices * d3d12->menu_pipeline_vbo_view.StrideInBytes;
            d3d12->menu_pipeline_vbo_view.BufferLocation = d3d12_create_buffer(
                  d3d12->device, d3d12->menu_pipeline_vbo_view.SizeInBytes,
                  &d3d12->menu_pipeline_vbo);

            D3D12Map(d3d12->menu_pipeline_vbo, 0, &read_range, &vertex_data_begin);
            memcpy(vertex_data_begin, ca->coords.vertex, d3d12->menu_pipeline_vbo_view.SizeInBytes);
            D3D12Unmap(d3d12->menu_pipeline_vbo, 0, ((void*)0));
         }
         D3D12IASetVertexBuffers(d3d12->queue.cmd, 0, 1, &d3d12->menu_pipeline_vbo_view);
         draw->coords->vertices = ca->coords.vertices;
         break;
      }

      case 131:
      case 130:
      case 129:
      case 128:
         D3D12IASetVertexBuffers(d3d12->queue.cmd, 0, 1, &d3d12->frame.vbo_view);
         draw->coords->vertices = 4;
         break;
      default:
         return;
   }
   D3D12IASetPrimitiveTopology(d3d12->queue.cmd, D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);

   d3d12->ubo_values.time += 0.01f;

   {
      D3D12_RANGE read_range = { 0, 0 };
      d3d12_uniform_t* mapped_ubo;
      D3D12Map(d3d12->ubo, 0, &read_range, (void**)&mapped_ubo);
      *mapped_ubo = d3d12->ubo_values;
      D3D12Unmap(d3d12->ubo, 0, ((void*)0));
   }
   D3D12SetGraphicsRootConstantBufferView(
         d3d12->queue.cmd, ROOT_ID_UBO, d3d12->ubo_view.BufferLocation);
}
