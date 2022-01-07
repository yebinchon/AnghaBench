
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vert ;
typedef int uint64_t ;
typedef int d3d8_video_t ;
struct TYPE_5__ {unsigned int last_width; unsigned int last_height; float tex_w; float tex_h; int vertex_buf; } ;
typedef TYPE_1__ d3d8_renderchain_t ;
struct TYPE_6__ {float x; float y; float z; float u; float v; int color; } ;
typedef TYPE_2__ Vertex ;


 void* d3d8_vertex_buffer_lock (int ) ;
 int d3d8_vertex_buffer_unlock (int ) ;
 int memcpy (void*,TYPE_2__*,int) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static void d3d8_renderchain_set_vertices(
      d3d8_video_t *d3d,
      d3d8_renderchain_t *chain,
      unsigned pass,
      unsigned vert_width, unsigned vert_height, uint64_t frame_count)
{
   unsigned width, height;

   video_driver_get_size(&width, &height);

   if (chain->last_width != vert_width || chain->last_height != vert_height)
   {
      Vertex vert[4];
      float tex_w, tex_h;
      void *verts = ((void*)0);

      chain->last_width = vert_width;
      chain->last_height = vert_height;

      tex_w = vert_width;
      tex_h = vert_height;

      vert[0].x = 0.0f;
      vert[0].y = 1.0f;
      vert[0].z = 1.0f;

      vert[1].x = 1.0f;
      vert[1].y = 1.0f;
      vert[1].z = 1.0f;

      vert[2].x = 0.0f;
      vert[2].y = 0.0f;
      vert[2].z = 1.0f;

      vert[3].x = 1.0f;
      vert[3].y = 0.0f;
      vert[3].z = 1.0f;

      vert[0].u = 0.0f;
      vert[0].v = 0.0f;
      vert[1].v = 0.0f;
      vert[2].u = 0.0f;
      vert[1].u = tex_w;
      vert[2].v = tex_h;
      vert[3].u = tex_w;
      vert[3].v = tex_h;

      vert[1].u /= chain->tex_w;
      vert[2].v /= chain->tex_h;
      vert[3].u /= chain->tex_w;
      vert[3].v /= chain->tex_h;


      vert[0].color = 0xFFFFFFFF;
      vert[1].color = 0xFFFFFFFF;
      vert[2].color = 0xFFFFFFFF;
      vert[3].color = 0xFFFFFFFF;

      verts = d3d8_vertex_buffer_lock(chain->vertex_buf);
      memcpy(verts, vert, sizeof(vert));
      d3d8_vertex_buffer_unlock(chain->vertex_buf);
   }
}
