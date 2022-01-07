
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int y; int x; } ;
struct TYPE_5__ {size_t pbo_readback_index; int* pbo_readback_valid; TYPE_1__ vp; int * pbo_readback; } ;
typedef TYPE_2__ gl_core_t ;


 int GL_BACK ;
 size_t GL_CORE_NUM_PBOS ;
 int GL_PACK_ALIGNMENT ;
 int GL_PACK_ROW_LENGTH ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 int glBindBuffer (int ,int ) ;
 int glPixelStorei (int ,int) ;
 int glReadBuffer (int ) ;
 int glReadPixels (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void gl_core_pbo_async_readback(gl_core_t *gl)
{
   glBindBuffer(GL_PIXEL_PACK_BUFFER, gl->pbo_readback[gl->pbo_readback_index++]);
   glPixelStorei(GL_PACK_ALIGNMENT, 4);
   glPixelStorei(GL_PACK_ROW_LENGTH, 0);

   glReadBuffer(GL_BACK);

   if (gl->pbo_readback_index >= GL_CORE_NUM_PBOS)
      gl->pbo_readback_index = 0;
   gl->pbo_readback_valid[gl->pbo_readback_index] = 1;

   glReadPixels(gl->vp.x, gl->vp.y,
                gl->vp.width, gl->vp.height,
                GL_RGBA, GL_UNSIGNED_BYTE, ((void*)0));
   glBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
}
