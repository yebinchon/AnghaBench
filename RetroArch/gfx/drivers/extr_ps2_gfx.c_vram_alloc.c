
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int Width; int Height; scalar_t__ Vram; void* VramClut; int ClutPSM; scalar_t__ Clut; int PSM; } ;
typedef TYPE_1__ GSTEXTURE ;
typedef int GSGLOBAL ;


 scalar_t__ GSKIT_ALLOC_ERROR ;
 int GSKIT_ALLOC_USERBUFFER ;
 int gsKit_texture_size (int,int,int ) ;
 void* gsKit_vram_alloc (int *,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static void vram_alloc(GSGLOBAL *gsGlobal, GSTEXTURE *texture)
{
   uint32_t size = gsKit_texture_size(texture->Width, texture->Height, texture->PSM);
   texture->Vram = gsKit_vram_alloc(gsGlobal, size, GSKIT_ALLOC_USERBUFFER);
   if(texture->Vram == GSKIT_ALLOC_ERROR) {
      printf("VRAM Allocation Failed. Will not upload texture.\n");
   }

   if (texture->Clut) {

      size = gsKit_texture_size(16, 16, texture->ClutPSM);
      texture->VramClut = gsKit_vram_alloc(gsGlobal, size , GSKIT_ALLOC_USERBUFFER);
   }
}
