
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_28__ {scalar_t__ userdata; } ;
typedef TYPE_8__ video_frame_info_t ;
struct TYPE_25__ {int id; } ;
struct TYPE_29__ {float x; float y; float height; float width; float scale_factor; scalar_t__ texture; TYPE_6__* coords; int rotation; TYPE_5__ pipeline; } ;
typedef TYPE_9__ menu_display_ctx_draw_t ;
struct TYPE_27__ {int capacity; int offset; int shader; int vbo; int enabled; } ;
struct TYPE_22__ {float Height; scalar_t__ Width; } ;
struct TYPE_17__ {int context; TYPE_7__ sprites; int * shaders; TYPE_2__ viewport; int blend_enable; } ;
typedef TYPE_10__ d3d11_video_t ;
struct TYPE_18__ {int * color; int * texcoord; int * position; } ;
typedef TYPE_11__ d3d11_vertex_t ;
typedef int d3d11_texture_t ;
struct TYPE_24__ {float scaling; int rotation; } ;
struct TYPE_23__ {float u; float v; float w; float h; } ;
struct TYPE_21__ {float x; float y; float w; float h; } ;
struct TYPE_19__ {void** colors; TYPE_4__ params; TYPE_3__ coords; TYPE_1__ pos; } ;
typedef TYPE_12__ d3d11_sprite_t ;
struct TYPE_26__ {int vertices; float* vertex; float* tex_coord; float* color; } ;
struct TYPE_20__ {scalar_t__ pData; } ;
typedef TYPE_13__ D3D11_MAPPED_SUBRESOURCE ;


 int D3D11Draw (int ,int,int) ;
 int D3D11MapBuffer (int ,int ,int ,int ,int ,TYPE_13__*) ;
 int D3D11SetBlendState (int ,int ,int *,int ) ;
 int D3D11SetPrimitiveTopology (int ,int ) ;
 int D3D11SetVertexBuffer (int ,int ,int ,int,int ) ;
 int D3D11UnmapBuffer (int ,int ,int ) ;
 int D3D11_DEFAULT_SAMPLE_MASK ;
 int D3D11_MAP_WRITE_NO_OVERWRITE ;
 int D3D11_PRIMITIVE_TOPOLOGY_POINTLIST ;
 int D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP ;
 void* DXGI_COLOR_RGBA (int,int,int,int) ;






 size_t VIDEO_SHADER_STOCK_BLEND ;
 int d3d11_set_shader (int ,int *) ;
 int d3d11_set_texture_and_sampler (int ,int ,int *) ;

__attribute__((used)) static void menu_display_d3d11_draw(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   int vertex_count;
   d3d11_video_t *d3d11 = (d3d11_video_t*)video_info->userdata;

   if (!d3d11 || !draw || !draw->texture)
      return;

   switch (draw->pipeline.id)
   {
      case 133:
      case 132:
      case 131:
      case 130:
      case 129:
      case 128:
         d3d11_set_shader(d3d11->context, &d3d11->shaders[draw->pipeline.id]);
         D3D11Draw(d3d11->context, draw->coords->vertices, 0);

         D3D11SetBlendState(d3d11->context, d3d11->blend_enable, ((void*)0), D3D11_DEFAULT_SAMPLE_MASK);
         d3d11_set_shader(d3d11->context, &d3d11->sprites.shader);
         D3D11SetVertexBuffer(d3d11->context, 0, d3d11->sprites.vbo, sizeof(d3d11_sprite_t), 0);
         D3D11SetPrimitiveTopology(d3d11->context, D3D11_PRIMITIVE_TOPOLOGY_POINTLIST);
         return;
   }

   if (draw->coords->vertex && draw->coords->tex_coord && draw->coords->color)
      vertex_count = draw->coords->vertices;
   else
      vertex_count = 1;

   if (!d3d11->sprites.enabled || vertex_count > d3d11->sprites.capacity)
      return;

   if (d3d11->sprites.offset + vertex_count > d3d11->sprites.capacity)
      d3d11->sprites.offset = 0;

   {
      D3D11_MAPPED_SUBRESOURCE mapped_vbo;
      d3d11_sprite_t* sprite = ((void*)0);

      D3D11MapBuffer(
            d3d11->context, d3d11->sprites.vbo, 0, D3D11_MAP_WRITE_NO_OVERWRITE, 0, &mapped_vbo);

      sprite = (d3d11_sprite_t*)mapped_vbo.pData + d3d11->sprites.offset;

      if (vertex_count == 1)
      {
         sprite->pos.x = draw->x / (float)d3d11->viewport.Width;
         sprite->pos.y =
               (d3d11->viewport.Height - draw->y - draw->height) / (float)d3d11->viewport.Height;
         sprite->pos.w = draw->width / (float)d3d11->viewport.Width;
         sprite->pos.h = draw->height / (float)d3d11->viewport.Height;

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
            d3d11_vertex_t* v = (d3d11_vertex_t*)sprite;
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

         d3d11_set_shader(d3d11->context, &d3d11->shaders[VIDEO_SHADER_STOCK_BLEND]);
         D3D11SetPrimitiveTopology(d3d11->context, D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);
      }

      D3D11UnmapBuffer(d3d11->context, d3d11->sprites.vbo, 0);
   }

   d3d11_set_texture_and_sampler(d3d11->context, 0, (d3d11_texture_t*)draw->texture);
   D3D11Draw(d3d11->context, vertex_count, d3d11->sprites.offset);
   d3d11->sprites.offset += vertex_count;

   if (vertex_count > 1)
   {
      d3d11_set_shader(d3d11->context, &d3d11->sprites.shader);
      D3D11SetPrimitiveTopology(d3d11->context, D3D11_PRIMITIVE_TOPOLOGY_POINTLIST);
   }

   return;
}
