
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {float u; float v; } ;
struct TYPE_10__ {TYPE_1__ coord; } ;
typedef TYPE_3__ frame_vertex_t ;
struct TYPE_9__ {float width; float height; } ;
struct TYPE_11__ {TYPE_2__ surface; } ;
typedef TYPE_4__ GX2Texture ;


 int GX2Invalidate (int ,TYPE_3__*,int) ;
 int GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER ;

__attribute__((used)) static void wiiu_set_tex_coords(frame_vertex_t *v, GX2Texture *texture, float u0, float v0,
                                float u1, float v1,
                                unsigned rotation)
{
   v[0].coord.u = u0 / texture->surface.width;
   v[0].coord.v = v0 / texture->surface.height;
   v[1].coord.u = u1 / texture->surface.width;
   v[1].coord.v = v0 / texture->surface.height;
   v[2].coord.u = u1 / texture->surface.width;
   v[2].coord.v = v1 / texture->surface.height;
   v[3].coord.u = u0 / texture->surface.width;
   v[3].coord.v = v1 / texture->surface.height;
   GX2Invalidate(GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER, v, 4 * sizeof(*v));
}
