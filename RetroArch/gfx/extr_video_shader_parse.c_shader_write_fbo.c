
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfx_fbo_scale {int abs_y; int scale_y; int type_y; int abs_x; int scale_x; int type_x; int valid; int srgb_fbo; int fp_fbo; } ;
typedef int key ;
typedef int config_file_t ;


 int config_set_bool (int *,char*,int ) ;
 int shader_write_scale_dim (int *,char*,int ,int ,int ,unsigned int) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void shader_write_fbo(config_file_t *conf,
      const struct gfx_fbo_scale *fbo, unsigned i)
{
   char key[64];

   key[0] = '\0';

   snprintf(key, sizeof(key), "float_framebuffer%u", i);
   config_set_bool(conf, key, fbo->fp_fbo);
   snprintf(key, sizeof(key), "srgb_framebuffer%u", i);
   config_set_bool(conf, key, fbo->srgb_fbo);

   if (!fbo->valid)
      return;

   shader_write_scale_dim(conf, "x", fbo->type_x,
         fbo->scale_x, fbo->abs_x, i);
   shader_write_scale_dim(conf, "y", fbo->type_y,
         fbo->scale_y, fbo->abs_y, i);
}
