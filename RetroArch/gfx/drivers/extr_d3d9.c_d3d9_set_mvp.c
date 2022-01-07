
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDIRECT3DDEVICE9 ;


 int d3d9_set_vertex_shader_constantf (int ,int ,float const*,int) ;

void d3d9_set_mvp(void *data, const void *mat_data)
{
   LPDIRECT3DDEVICE9 dev = (LPDIRECT3DDEVICE9)data;
   d3d9_set_vertex_shader_constantf(dev, 0, (const float*)mat_data, 4);
}
