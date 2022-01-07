
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Vertex {scalar_t__ u; scalar_t__ x; } ;
struct TYPE_3__ {scalar_t__ dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int GU_DIRECT ;
 int GU_PSM_5650 ;
 int GU_PSM_T8 ;
 int GU_SPRITES ;
 int GU_TEXTURE_16BIT ;
 int GU_TRANSFORM_2D ;
 int GU_VERTEX_16BIT ;
 TYPE_2__ Pico ;
 int PicoOpt ;
 int SLICE_WIDTH ;
 scalar_t__ VRAMOFFS_FB0 ;
 scalar_t__ VRAMOFFS_FB1 ;
 scalar_t__ VRAM_FB0 ;
 scalar_t__ VRAM_STUFF ;
 int blit_16bit_mode ;
 int do_pal_update (int ,int ) ;
 scalar_t__ dynamic_palette ;
 int fbimg_offs ;
 struct Vertex* g_vertices ;
 int guCmdList ;
 int localPal ;
 int memcpy (struct Vertex*,struct Vertex*,int) ;
 scalar_t__ need_pal_upload ;
 scalar_t__ psp_screen ;
 int sceGuClutLoad (int,int ) ;
 int sceGuClutMode (int ,int ,int,int ) ;
 int sceGuDrawArray (int ,int,int,int ,struct Vertex*) ;
 int sceGuDrawBuffer (int ,void*,int) ;
 int sceGuFinish () ;
 scalar_t__ sceGuGetMemory (int) ;
 int sceGuStart (int ,int ) ;
 int sceGuSync (int ,int ) ;
 int sceGuTexImage (int ,int,int,int,char*) ;
 int sceGuTexMode (int ,int ,int ,int ) ;
 int sceKernelDcacheWritebackAll () ;

__attribute__((used)) static void blitscreen_clut(void)
{
 int offs = fbimg_offs;
 offs += (psp_screen == VRAM_FB0) ? VRAMOFFS_FB0 : VRAMOFFS_FB1;

 sceGuSync(0,0);
 sceGuStart(GU_DIRECT, guCmdList);
 sceGuDrawBuffer(GU_PSM_5650, (void *)offs, 512);

 if (dynamic_palette)
 {
  if (!blit_16bit_mode) {
   sceGuTexMode(GU_PSM_5650, 0, 0, 0);
   sceGuTexImage(0,512,512,512,(char *)VRAM_STUFF + 512*240);

   blit_16bit_mode = 1;
  }
 }
 else
 {
  if (blit_16bit_mode) {
   sceGuClutMode(GU_PSM_5650,0,0xff,0);
   sceGuTexMode(GU_PSM_T8,0,0,0);
   sceGuTexImage(0,512,512,512,(char *)VRAM_STUFF + 16);
   blit_16bit_mode = 0;
  }

  if ((PicoOpt&0x10) && Pico.m.dirtyPal)
   do_pal_update(0, 0);

  sceKernelDcacheWritebackAll();

  if (need_pal_upload) {
   need_pal_upload = 0;
   sceGuClutLoad((256/8), localPal);
  }
 }


 if (g_vertices[0].u == 0 && g_vertices[1].u == g_vertices[1].x)
 {
  struct Vertex* vertices;
  int x;


  for (x = 0; x < g_vertices[1].x; x += 32)
  {

   vertices = (struct Vertex*)sceGuGetMemory(2 * sizeof(struct Vertex));
   memcpy(vertices, g_vertices, 2 * sizeof(struct Vertex));
   vertices[0].u = vertices[0].x = x;
   vertices[1].u = vertices[1].x = x + 32;
   sceGuDrawArray(GU_SPRITES,GU_TEXTURE_16BIT|GU_VERTEX_16BIT|GU_TRANSFORM_2D,2,0,vertices);
  }

 }
 else

  sceGuDrawArray(GU_SPRITES,GU_TEXTURE_16BIT|GU_VERTEX_16BIT|GU_TRANSFORM_2D,2,0,g_vertices);

 sceGuFinish();
}
