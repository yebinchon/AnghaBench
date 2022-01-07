
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* pbo_readback; int pbo_readback_scaler; } ;
typedef TYPE_1__ gl_core_t ;


 unsigned int GL_CORE_NUM_PBOS ;
 int glDeleteBuffers (int,scalar_t__*) ;
 int memset (scalar_t__*,int ,int) ;
 int scaler_ctx_gen_reset (int *) ;

__attribute__((used)) static void gl_core_deinit_pbo_readback(gl_core_t *gl)
{
   unsigned i;
   for (i = 0; i < GL_CORE_NUM_PBOS; i++)
      if (gl->pbo_readback[i] != 0)
         glDeleteBuffers(1, &gl->pbo_readback[i]);
   memset(gl->pbo_readback, 0, sizeof(gl->pbo_readback));
   scaler_ctx_gen_reset(&gl->pbo_readback_scaler);
}
