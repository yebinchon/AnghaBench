
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int SDL_PHYSPAL ;
 int SDL_SetPalette (int ,int ,scalar_t__,int ,int) ;
 int SetOpenGLPalette (int *) ;
 int SetPaletteBlitToHigh (int *) ;
 int curbpp ;
 scalar_t__ psdl ;
 int screen ;
 scalar_t__ usingogl ;

__attribute__((used)) static void RedoPalette(void)
{





 {
  if(curbpp>8)
   SetPaletteBlitToHigh((uint8*)psdl);
  else
  {
   SDL_SetPalette(screen,SDL_PHYSPAL,psdl,0,256);
  }
 }
}
