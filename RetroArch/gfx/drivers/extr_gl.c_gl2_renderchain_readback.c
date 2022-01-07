
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int y; int x; } ;
struct TYPE_5__ {TYPE_1__ vp; } ;
typedef TYPE_2__ gl_t ;
typedef int GLvoid ;
typedef int GLenum ;


 int GL_BACK ;
 int GL_PACK_ALIGNMENT ;
 int GL_PACK_ROW_LENGTH ;
 int glPixelStorei (int ,unsigned int) ;
 int glReadBuffer (int ) ;
 int glReadPixels (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void gl2_renderchain_readback(
      gl_t *gl,
      void *chain_data,
      unsigned alignment,
      unsigned fmt, unsigned type,
      void *src)
{
   glPixelStorei(GL_PACK_ALIGNMENT, alignment);

   glPixelStorei(GL_PACK_ROW_LENGTH, 0);
   glReadBuffer(GL_BACK);


   glReadPixels(gl->vp.x, gl->vp.y,
         gl->vp.width, gl->vp.height,
         (GLenum)fmt, (GLenum)type, (GLvoid*)src);
}
