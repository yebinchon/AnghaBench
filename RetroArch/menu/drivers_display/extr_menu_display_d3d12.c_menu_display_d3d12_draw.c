
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_16__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_23__ {scalar_t__ userdata; } ;
typedef TYPE_10__ video_frame_info_t ;
struct TYPE_35__ {int id; } ;
struct TYPE_24__ {float x; float y; float height; float width; float scale_factor; scalar_t__ texture; TYPE_7__* coords; int rotation; TYPE_6__ pipeline; } ;
typedef TYPE_11__ menu_display_ctx_draw_t ;
struct TYPE_38__ {int cmd; } ;
struct TYPE_37__ {int capacity; int offset; int pipe; int vbo; int enabled; int vbo_view; } ;
struct TYPE_31__ {float Height; scalar_t__ Width; } ;
struct TYPE_32__ {TYPE_2__ viewport; } ;
struct TYPE_25__ {TYPE_9__ queue; TYPE_8__ sprites; int * pipes; TYPE_3__ chain; } ;
typedef TYPE_12__ d3d12_video_t ;
struct TYPE_26__ {int * color; int * texcoord; int * position; } ;
typedef TYPE_13__ d3d12_vertex_t ;
struct TYPE_27__ {scalar_t__ dirty; } ;
typedef TYPE_14__ d3d12_texture_t ;
struct TYPE_34__ {float scaling; int rotation; } ;
struct TYPE_33__ {float u; float v; float w; float h; } ;
struct TYPE_30__ {float x; float y; float w; float h; } ;
struct TYPE_28__ {void** colors; TYPE_5__ params; TYPE_4__ coords; TYPE_1__ pos; } ;
typedef TYPE_15__ d3d12_sprite_t ;
struct TYPE_36__ {int vertices; float* vertex; float* tex_coord; int* color; } ;
struct TYPE_29__ {int Begin; int End; int member_1; int member_0; } ;
typedef TYPE_16__ D3D12_RANGE ;


 int D3D12DrawInstanced (int ,int,int,int,int ) ;
 int D3D12IASetPrimitiveTopology (int ,int ) ;
 int D3D12IASetVertexBuffers (int ,int ,int,int *) ;
 int D3D12Map (int ,int ,TYPE_16__*,void**) ;
 int D3D12SetPipelineState (int ,int ) ;
 int D3D12Unmap (int ,int ,TYPE_16__*) ;
 int D3D_PRIMITIVE_TOPOLOGY_POINTLIST ;
 int D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP ;
 void* DXGI_COLOR_RGBA (int,int,int,int) ;






 size_t VIDEO_SHADER_STOCK_BLEND ;
 int d3d12_set_texture_and_sampler (int ,TYPE_14__*) ;
 int d3d12_upload_texture (int ,TYPE_14__*,scalar_t__) ;

__attribute__((used)) static void menu_display_d3d12_draw(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   int vertex_count;
   d3d12_video_t *d3d12 = (d3d12_video_t*)video_info->userdata;

   if (!d3d12 || !draw || !draw->texture)
      return;

   switch (draw->pipeline.id)
   {
      case 133:
      case 132:
      case 131:
      case 130:
      case 129:
      case 128:
         D3D12SetPipelineState(d3d12->queue.cmd, d3d12->pipes[draw->pipeline.id]);
         D3D12DrawInstanced(d3d12->queue.cmd, draw->coords->vertices, 1, 0, 0);
         D3D12SetPipelineState(d3d12->queue.cmd, d3d12->sprites.pipe);
         D3D12IASetPrimitiveTopology(d3d12->queue.cmd, D3D_PRIMITIVE_TOPOLOGY_POINTLIST);
         D3D12IASetVertexBuffers(d3d12->queue.cmd, 0, 1, &d3d12->sprites.vbo_view);
         return;
   }

   if (draw->coords->vertex && draw->coords->tex_coord && draw->coords->color)
      vertex_count = draw->coords->vertices;
   else
      vertex_count = 1;

   if (!d3d12->sprites.enabled || vertex_count > d3d12->sprites.capacity)
      return;

   if (d3d12->sprites.offset + vertex_count > d3d12->sprites.capacity)
      d3d12->sprites.offset = 0;

   {
      d3d12_sprite_t* sprite;
      D3D12_RANGE range = { 0, 0 };
      D3D12Map(d3d12->sprites.vbo, 0, &range, (void**)&sprite);
      sprite += d3d12->sprites.offset;

      if (vertex_count == 1)
      {

         sprite->pos.x = draw->x / (float)d3d12->chain.viewport.Width;
         sprite->pos.y = (d3d12->chain.viewport.Height - draw->y - draw->height) /
                         (float)d3d12->chain.viewport.Height;
         sprite->pos.w = draw->width / (float)d3d12->chain.viewport.Width;
         sprite->pos.h = draw->height / (float)d3d12->chain.viewport.Height;

         sprite->coords.u = 0.0f;
         sprite->coords.v = 0.0f;
         sprite->coords.w = 1.0f;
         sprite->coords.h = 1.0f;

         if (draw->scale_factor)
            sprite->params.scaling = draw->scale_factor;
         else
            sprite->params.scaling = 1.0f;

         sprite->params.rotation = draw->rotation;

         sprite->colors[3] = DXGI_COLOR_RGBA(
               0xFF * draw->coords->color[0], 0xFF * draw->coords->color[1],
               0xFF * draw->coords->color[2], 0xFF * draw->coords->color[3]);
         sprite->colors[2] = DXGI_COLOR_RGBA(
               0xFF * draw->coords->color[4], 0xFF * draw->coords->color[5],
               0xFF * draw->coords->color[6], 0xFF * draw->coords->color[7]);
         sprite->colors[1] = DXGI_COLOR_RGBA(
               0xFF * draw->coords->color[8], 0xFF * draw->coords->color[9],
               0xFF * draw->coords->color[10], 0xFF * draw->coords->color[11]);
         sprite->colors[0] = DXGI_COLOR_RGBA(
               0xFF * draw->coords->color[12], 0xFF * draw->coords->color[13],
               0xFF * draw->coords->color[14], 0xFF * draw->coords->color[15]);
      }
      else
      {
         int i;
         const float* vertex = draw->coords->vertex;
         const float* tex_coord = draw->coords->tex_coord;
         const float* color = draw->coords->color;

         for (i = 0; i < vertex_count; i++)
         {
            d3d12_vertex_t* v = (d3d12_vertex_t*)sprite;
            v->position[0] = *vertex++;
            v->position[1] = *vertex++;
            v->texcoord[0] = *tex_coord++;
            v->texcoord[1] = *tex_coord++;
            v->color[0] = *color++;
            v->color[1] = *color++;
            v->color[2] = *color++;
            v->color[3] = *color++;

            sprite++;
         }
         D3D12SetPipelineState(d3d12->queue.cmd,
               d3d12->pipes[VIDEO_SHADER_STOCK_BLEND]);
         D3D12IASetPrimitiveTopology(d3d12->queue.cmd,
               D3D_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);
      }

      range.Begin = d3d12->sprites.offset * sizeof(*sprite);
      range.End = (d3d12->sprites.offset + vertex_count) * sizeof(*sprite);
      D3D12Unmap(d3d12->sprites.vbo, 0, &range);
   }

   {
      d3d12_texture_t* texture = (d3d12_texture_t*)draw->texture;
      if (texture->dirty)
      {
         d3d12_upload_texture(d3d12->queue.cmd,
               texture, video_info->userdata);

         if (vertex_count > 1)
            D3D12SetPipelineState(d3d12->queue.cmd,
                  d3d12->pipes[VIDEO_SHADER_STOCK_BLEND]);
         else
            D3D12SetPipelineState(d3d12->queue.cmd,
                  d3d12->sprites.pipe);
      }
      d3d12_set_texture_and_sampler(d3d12->queue.cmd, texture);
   }

   D3D12DrawInstanced(d3d12->queue.cmd, vertex_count, 1, d3d12->sprites.offset, 0);
   d3d12->sprites.offset += vertex_count;

   if (vertex_count > 1)
   {
      D3D12SetPipelineState(d3d12->queue.cmd, d3d12->sprites.pipe);
      D3D12IASetPrimitiveTopology(d3d12->queue.cmd, D3D_PRIMITIVE_TOPOLOGY_POINTLIST);
   }

   return;
}
