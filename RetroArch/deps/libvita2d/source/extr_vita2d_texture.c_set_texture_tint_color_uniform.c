
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _vita2d_context ;
 int _vita2d_textureTintColorParam ;
 int sceGxmReserveFragmentDefaultUniformBuffer (int ,void**) ;
 int sceGxmSetUniformDataF (void*,int ,int ,int,float*) ;
 float* vita2d_pool_memalign (int,int) ;

__attribute__((used)) static inline void set_texture_tint_color_uniform(unsigned int color)
{
 void *texture_tint_color_buffer;
 sceGxmReserveFragmentDefaultUniformBuffer(_vita2d_context, &texture_tint_color_buffer);

 float *tint_color = vita2d_pool_memalign(
  4 * sizeof(float),
  sizeof(float));

 tint_color[0] = ((color >> 8*0) & 0xFF)/255.0f;
 tint_color[1] = ((color >> 8*1) & 0xFF)/255.0f;
 tint_color[2] = ((color >> 8*2) & 0xFF)/255.0f;
 tint_color[3] = ((color >> 8*3) & 0xFF)/255.0f;

 sceGxmSetUniformDataF(texture_tint_color_buffer, _vita2d_textureTintColorParam, 0, 4, tint_color);
}
