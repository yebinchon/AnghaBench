
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int pixel_t ;


 int TITAN_BLEND_TOP ;
 int TitanGetResolution (int*,int*) ;
 int TitanInit () ;
 int TitanRender (int *) ;
 int TitanSetBlendingMode (int ) ;
 int VIDSoftVdp2DrawScreen (int ) ;
 scalar_t__ calloc (int,int) ;

pixel_t *Vdp2DebugTexture(u32 screen, int * w, int * h)
{
   pixel_t * bitmap;

   TitanInit();
   TitanSetBlendingMode(TITAN_BLEND_TOP);
   VIDSoftVdp2DrawScreen(screen);

   if ((bitmap = (pixel_t *)calloc(sizeof(pixel_t), 704 * 512)) == ((void*)0))
      return ((void*)0);

   TitanGetResolution(w, h);

   TitanRender(bitmap);

   return bitmap;
}
