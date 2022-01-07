
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int y; int x; } ;
struct TYPE_5__ {TYPE_1__ vp; } ;
typedef TYPE_2__ gl_core_t ;


 int GL_BACK ;
 int GL_PACK_ALIGNMENT ;
 int GL_PACK_ROW_LENGTH ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 int glBindBuffer (int ,int ) ;
 int glPixelStorei (int ,int) ;
 int glReadBuffer (int ) ;
 int glReadPixels (int ,int ,int ,int ,int ,int ,void*) ;

__attribute__((used)) static void gl_core_slow_readback(gl_core_t *gl, void *buffer)
{
   glPixelStorei(GL_PACK_ALIGNMENT, 4);
   glPixelStorei(GL_PACK_ROW_LENGTH, 0);
   glBindBuffer(GL_PIXEL_PACK_BUFFER, 0);

   glReadBuffer(GL_BACK);


   glReadPixels(gl->vp.x, gl->vp.y,
                gl->vp.width, gl->vp.height,
                GL_RGBA, GL_UNSIGNED_BYTE, buffer);
}
