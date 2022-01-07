
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int view; int up; int pos; } ;
typedef int Mtx ;


 int DEFAULT_FIFO_SIZE ;
 int GX_ALWAYS ;
 int GX_CLIP_DISABLE ;
 int GX_CULL_NONE ;
 int GX_FALSE ;
 int GX_Flush () ;
 int GX_GM_1_0 ;
 int GX_Init (int *,int) ;
 int GX_LoadPosMtxImm (int ,int ) ;
 int GX_PF_RGB8_Z24 ;
 int GX_PNMTX0 ;
 int GX_SetAlphaUpdate (int ) ;
 int GX_SetClipMode (int ) ;
 int GX_SetColorUpdate (int ) ;
 int GX_SetCullMode (int ) ;
 int GX_SetDispCopyGamma (int ) ;
 int GX_SetPixelFmt (int ,int ) ;
 int GX_SetZMode (int ,int ,int ) ;
 int GX_TRUE ;
 int GX_ZC_LINEAR ;
 TYPE_1__ cam ;
 int gp_fifo ;
 int guLookAt (int ,int *,int *,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void gxStart(void)
{

  memset(&gp_fifo, 0, DEFAULT_FIFO_SIZE);


  GX_Init(&gp_fifo, DEFAULT_FIFO_SIZE);
  GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
  GX_SetCullMode(GX_CULL_NONE);
  GX_SetClipMode(GX_CLIP_DISABLE);
  GX_SetDispCopyGamma(GX_GM_1_0);
  GX_SetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
  GX_SetColorUpdate(GX_TRUE);
  GX_SetAlphaUpdate(GX_FALSE);


  Mtx view;
  memset (&view, 0, sizeof (Mtx));
  guLookAt(view, &cam.pos, &cam.up, &cam.view);
  GX_LoadPosMtxImm(view, GX_PNMTX0);
  GX_Flush();
}
