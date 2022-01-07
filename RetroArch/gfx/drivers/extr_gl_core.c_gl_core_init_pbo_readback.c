
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
typedef TYPE_2__ gl_core_t ;


 unsigned int GL_CORE_NUM_PBOS ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_STREAM_READ ;
 int RARCH_ERR (char*) ;
 int SCALER_FMT_ABGR8888 ;
 int SCALER_FMT_BGR24 ;
 int SCALER_TYPE_POINT ;
 int glBindBuffer (int ,int ) ;
 int glBufferData (int ,int,int *,int ) ;
 int glDeleteBuffers (int,int *) ;
 int glGenBuffers (unsigned int,int *) ;
 int memset (int *,int ,int) ;
 int scaler_ctx_gen_filter (struct scaler_ctx*) ;

__attribute__((used)) static bool gl_core_init_pbo_readback(gl_core_t *gl)
{
   unsigned i;
   struct scaler_ctx *scaler = ((void*)0);

   glGenBuffers(GL_CORE_NUM_PBOS, gl->pbo_readback);

   for (i = 0; i < GL_CORE_NUM_PBOS; i++)
   {
      glBindBuffer(GL_PIXEL_PACK_BUFFER, gl->pbo_readback[i]);
      glBufferData(GL_PIXEL_PACK_BUFFER, gl->vp.width * gl->vp.height * sizeof(uint32_t), ((void*)0), GL_STREAM_READ);
   }
   glBindBuffer(GL_PIXEL_PACK_BUFFER, 0);

   scaler = &gl->pbo_readback_scaler;

   scaler->in_width = gl->vp.width;
   scaler->in_height = gl->vp.height;
   scaler->out_width = gl->vp.width;
   scaler->out_height = gl->vp.height;
   scaler->in_stride = gl->vp.width * sizeof(uint32_t);
   scaler->out_stride = gl->vp.width * 3;
   scaler->in_fmt = SCALER_FMT_ABGR8888;
   scaler->out_fmt = SCALER_FMT_BGR24;
   scaler->scaler_type = SCALER_TYPE_POINT;

   if (!scaler_ctx_gen_filter(scaler))
   {
      gl->pbo_readback_enable = 0;
      RARCH_ERR("[GLCore]: Failed to initialize pixel conversion for PBO.\n");
      glDeleteBuffers(4, gl->pbo_readback);
      memset(gl->pbo_readback, 0, sizeof(gl->pbo_readback));
      return 0;
   }

   return 1;
}
