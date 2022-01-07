
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct scaler_ctx {int in_width; int in_height; int out_width; int out_height; int in_stride; int out_stride; int scaler_type; int out_fmt; int in_fmt; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {int pbo_readback_enable; int * pbo_readback; TYPE_1__ vp; struct scaler_ctx pbo_readback_scaler; } ;
typedef TYPE_2__ gl_t ;


 int RARCH_ERR (char*) ;
 int SCALER_FMT_ARGB8888 ;
 int SCALER_FMT_BGR24 ;
 int SCALER_TYPE_POINT ;
 int gl2_renderchain_bind_pbo (int ) ;
 int gl2_renderchain_init_pbo (int,int *) ;
 int gl2_renderchain_unbind_pbo () ;
 int glDeleteBuffers (int,int *) ;
 int glGenBuffers (int,int *) ;
 int scaler_ctx_gen_filter (struct scaler_ctx*) ;

__attribute__((used)) static bool gl2_init_pbo_readback(gl_t *gl)
{

   unsigned i;

   glGenBuffers(4, gl->pbo_readback);

   for (i = 0; i < 4; i++)
   {
      gl2_renderchain_bind_pbo(gl->pbo_readback[i]);
      gl2_renderchain_init_pbo(gl->vp.width *
            gl->vp.height * sizeof(uint32_t), ((void*)0));
   }
   gl2_renderchain_unbind_pbo();


   {
      struct scaler_ctx *scaler = &gl->pbo_readback_scaler;
      scaler->in_width = gl->vp.width;
      scaler->in_height = gl->vp.height;
      scaler->out_width = gl->vp.width;
      scaler->out_height = gl->vp.height;
      scaler->in_stride = gl->vp.width * sizeof(uint32_t);
      scaler->out_stride = gl->vp.width * 3;
      scaler->in_fmt = SCALER_FMT_ARGB8888;
      scaler->out_fmt = SCALER_FMT_BGR24;
      scaler->scaler_type = SCALER_TYPE_POINT;

      if (!scaler_ctx_gen_filter(scaler))
      {
         gl->pbo_readback_enable = 0;
         RARCH_ERR("[GL]: Failed to initialize pixel conversion for PBO.\n");
         glDeleteBuffers(4, gl->pbo_readback);
         return 0;
      }
   }


   return 1;





}
