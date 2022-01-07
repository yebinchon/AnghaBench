
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int y; int x; } ;
struct TYPE_5__ {TYPE_1__ vp; } ;
typedef TYPE_2__ gl1_t ;
typedef int GLvoid ;
typedef int GLenum ;


 int GL_BACK ;
 int GL_PACK_ALIGNMENT ;
 int GL_PACK_ROW_LENGTH ;
 int glPixelStorei (int ,unsigned int) ;
 int glReadBuffer (int ) ;
 int glReadPixels (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void gl1_readback(
      gl1_t *gl1,
      unsigned alignment,
      unsigned fmt, unsigned type,
      void *src)
{

   glPixelStorei(GL_PACK_ALIGNMENT, alignment);
   glPixelStorei(GL_PACK_ROW_LENGTH, 0);
   glReadBuffer(GL_BACK);

   glReadPixels(gl1->vp.x, gl1->vp.y,
         gl1->vp.width, gl1->vp.height,
         (GLenum)fmt, (GLenum)type, (GLvoid*)src);
}
