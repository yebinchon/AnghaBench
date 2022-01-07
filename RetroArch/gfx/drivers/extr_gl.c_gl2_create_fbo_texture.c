
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ video_force_srgb_disable; scalar_t__ video_smooth; } ;
struct TYPE_15__ {TYPE_3__ bools; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_16__ {TYPE_4__* fbo_rect; int shader_data; TYPE_1__* shader; } ;
typedef TYPE_6__ gl_t ;
struct TYPE_17__ {scalar_t__ has_srgb_fbo_gles3; scalar_t__ has_srgb_fbo; TYPE_2__* fbo_scale; scalar_t__ has_fp_fbo; } ;
typedef TYPE_7__ gl2_renderchain_data_t ;
typedef enum gfx_wrap_type { ____Placeholder_gfx_wrap_type } gfx_wrap_type ;
struct TYPE_14__ {int height; int width; } ;
struct TYPE_12__ {int fp_fbo; int srgb_fbo; } ;
struct TYPE_11__ {int (* mipmap_input ) (int ,unsigned int) ;int (* wrap_type ) (int ,unsigned int) ;scalar_t__ (* filter_type ) (int ,unsigned int,int*) ;} ;
typedef void* GLuint ;
typedef void* GLenum ;


 int GL_FLOAT ;
 void* GL_LINEAR ;
 void* GL_LINEAR_MIPMAP_LINEAR ;
 void* GL_NEAREST ;
 void* GL_NEAREST_MIPMAP_NEAREST ;
 int GL_RGBA ;
 int GL_RGBA32F ;
 int GL_SRGB8_ALPHA8 ;
 int GL_SRGB_ALPHA_EXT ;
 int GL_TEXTURE_2D ;
 int GL_UNSIGNED_BYTE ;
 int RARCH_ERR (char*) ;
 int RARCH_GL_FORMAT32 ;
 int RARCH_GL_INTERNAL_FORMAT32 ;
 int RARCH_GL_TEXTURE_TYPE32 ;
 int RARCH_LOG (char*,unsigned int) ;
 TYPE_5__* config_get_ptr () ;
 int gl2_load_texture_image (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 void* gl2_min_filter_to_mag (void*) ;
 void* gl2_wrap_type_to_enum (int) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int gl_bind_texture (void*,void*,void*,void*) ;
 int stub1 (int ,unsigned int) ;
 scalar_t__ stub2 (int ,unsigned int,int*) ;
 int stub3 (int ,unsigned int) ;

__attribute__((used)) static void gl2_create_fbo_texture(gl_t *gl,
      gl2_renderchain_data_t *chain,
      unsigned i, GLuint texture)
{
   GLenum mag_filter, wrap_enum;
   enum gfx_wrap_type wrap_type;
   bool fp_fbo = 0;
   bool smooth = 0;
   settings_t *settings = config_get_ptr();
   GLuint base_filt = settings->bools.video_smooth ? GL_LINEAR : GL_NEAREST;
   GLuint base_mip_filt = settings->bools.video_smooth ?
      GL_LINEAR_MIPMAP_LINEAR : GL_NEAREST_MIPMAP_NEAREST;
   unsigned mip_level = i + 2;
   bool mipmapped = gl->shader->mipmap_input(gl->shader_data, mip_level);
   GLenum min_filter = mipmapped ? base_mip_filt : base_filt;

   if (gl->shader->filter_type(gl->shader_data,
            i + 2, &smooth))
   {
      min_filter = mipmapped ? (smooth ?
            GL_LINEAR_MIPMAP_LINEAR : GL_NEAREST_MIPMAP_NEAREST)
         : (smooth ? GL_LINEAR : GL_NEAREST);
   }

   mag_filter = gl2_min_filter_to_mag(min_filter);

   wrap_type = gl->shader->wrap_type(gl->shader_data, i + 2);

   wrap_enum = gl2_wrap_type_to_enum(wrap_type);

   gl_bind_texture(texture, wrap_enum, mag_filter, min_filter);

   fp_fbo = chain->fbo_scale[i].fp_fbo;

   if (fp_fbo)
   {
      if (!chain->has_fp_fbo)
         RARCH_ERR("[GL]: Floating-point FBO was requested, but is not supported. Falling back to UNORM. Result may band/clip/etc.!\n");
   }


   if (fp_fbo && chain->has_fp_fbo)
   {
      RARCH_LOG("[GL]: FBO pass #%d is floating-point.\n", i);
      gl2_load_texture_image(GL_TEXTURE_2D, 0, GL_RGBA32F,
         gl->fbo_rect[i].width, gl->fbo_rect[i].height,
         0, GL_RGBA, GL_FLOAT, ((void*)0));
   }
   else

   {

      bool srgb_fbo = chain->fbo_scale[i].srgb_fbo;

      if (!fp_fbo && srgb_fbo)
      {
         if (!chain->has_srgb_fbo)
               RARCH_ERR("[GL]: sRGB FBO was requested, but it is not supported. Falling back to UNORM. Result may have banding!\n");
      }

      if (settings->bools.video_force_srgb_disable)
         srgb_fbo = 0;

      if (srgb_fbo && chain->has_srgb_fbo)
      {
         RARCH_LOG("[GL]: FBO pass #%d is sRGB.\n", i);
         gl2_load_texture_image(GL_TEXTURE_2D,
            0, GL_SRGB8_ALPHA8,
            gl->fbo_rect[i].width, gl->fbo_rect[i].height, 0,
            GL_RGBA, GL_UNSIGNED_BYTE, ((void*)0));

      }
      else

      {
         gl2_load_texture_image(GL_TEXTURE_2D,
            0, RARCH_GL_INTERNAL_FORMAT32,
            gl->fbo_rect[i].width, gl->fbo_rect[i].height, 0,
            RARCH_GL_TEXTURE_TYPE32, RARCH_GL_FORMAT32, ((void*)0));

      }
   }
}
