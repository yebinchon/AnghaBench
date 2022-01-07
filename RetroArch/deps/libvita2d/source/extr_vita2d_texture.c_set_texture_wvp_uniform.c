
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _vita2d_context ;
 int _vita2d_ortho_matrix ;
 int _vita2d_textureWvpParam ;
 int sceGxmReserveVertexDefaultUniformBuffer (int ,void**) ;
 int sceGxmSetUniformDataF (void*,int ,int ,int,int ) ;

__attribute__((used)) static inline void set_texture_wvp_uniform()
{
 void *vertex_wvp_buffer;
 sceGxmReserveVertexDefaultUniformBuffer(_vita2d_context, &vertex_wvp_buffer);
 sceGxmSetUniformDataF(vertex_wvp_buffer, _vita2d_textureWvpParam, 0, 16, _vita2d_ortho_matrix);
}
