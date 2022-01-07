
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tex_w; unsigned int tex_h; int base_size; int * empty_buf; } ;
typedef TYPE_1__ gl_t ;
struct TYPE_6__ {scalar_t__ egl_images; } ;
typedef TYPE_2__ gl2_renderchain_data_t ;
typedef int GLenum ;


 int GL_TEXTURE_2D ;
 int gl2_load_texture_image (int ,int ,int ,unsigned int,unsigned int,int ,int ,int ,int *) ;
 int glTextureReferenceSCE (int ,int,int,unsigned int,int ,int ,int,unsigned int) ;

__attribute__((used)) static void gl2_renderchain_init_texture_reference(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      unsigned i,
      unsigned internal_fmt, unsigned texture_fmt,
      unsigned texture_type)
{







   if (chain->egl_images)
      return;

   gl2_load_texture_image(GL_TEXTURE_2D,
      0,
      (GLenum)internal_fmt,
      gl->tex_w, gl->tex_h, 0,
      (GLenum)texture_type,
      (GLenum)texture_fmt,
      gl->empty_buf ? gl->empty_buf : ((void*)0));

}
