
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int width; } ;
struct TYPE_6__ {int pbo_readback_index; int* pbo_readback_valid; TYPE_1__ vp; int renderchain_data; int * pbo_readback; } ;
typedef TYPE_2__ gl_t ;
typedef int GLenum ;


 int GL_BGRA ;
 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 int GL_UNSIGNED_INT_8_8_8_8_REV ;
 int gl2_renderchain_bind_pbo (int ) ;
 int gl2_renderchain_readback (TYPE_2__*,int ,int ,int ,int ,int *) ;
 int gl2_renderchain_unbind_pbo () ;
 int video_pixel_get_alignment (int) ;

__attribute__((used)) static void gl2_pbo_async_readback(gl_t *gl)
{




   GLenum fmt = GL_BGRA;
   GLenum type = GL_UNSIGNED_INT_8_8_8_8_REV;


   gl2_renderchain_bind_pbo(
         gl->pbo_readback[gl->pbo_readback_index++]);
   gl->pbo_readback_index &= 3;


   gl->pbo_readback_valid[gl->pbo_readback_index] = 1;

   gl2_renderchain_readback(gl, gl->renderchain_data,
         video_pixel_get_alignment(gl->vp.width * sizeof(uint32_t)),
         fmt, type, ((void*)0));
   gl2_renderchain_unbind_pbo();
}
