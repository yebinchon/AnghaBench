
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_12__ {int* ScreenBuffer; int ActiveBuffer; int Width; int PrimContext; int EvenOrOdd; int PSM; } ;
struct TYPE_11__ {int FIELD; } ;
struct TYPE_10__ {int Vram; int VramClut; int Filter; int Clut; int * Mem; int PSM; int Height; int Width; } ;
typedef TYPE_1__ GSTEXTURE ;
typedef TYPE_2__ GSREG ;


 scalar_t__ GS_CSR ;
 int GS_FILTER_LINEAR ;
 int GS_PSM_T8 ;
 int GS_SET_DISPFB2 (int,int,int ,int ,int ) ;
 int Screen_HEIGHT ;
 int Screen_WIDTH ;
 scalar_t__ Screen_atari ;
 int clut ;
 TYPE_3__* gsGlobal ;
 int gsKit_prim_sprite_texture (TYPE_3__*,TYPE_1__*,int ,int ,int,int ,int,int,int,int,int ,int) ;
 int gsKit_setactive (TYPE_3__*) ;
 int gsKit_sync_flip (TYPE_3__*) ;
 int gsKit_texture_upload (TYPE_3__*,TYPE_1__*) ;

void PLATFORM_DisplayScreen(void)
{
 GSTEXTURE tex;
 tex.Width = Screen_WIDTH;
 tex.Height = Screen_HEIGHT;
 tex.PSM = GS_PSM_T8;
 tex.Mem = (UBYTE *) Screen_atari;
 tex.Clut = clut;
 tex.Vram = 0x200000;
 tex.VramClut = 0x280000;
 tex.Filter = GS_FILTER_LINEAR;

 gsKit_texture_upload(gsGlobal, &tex);
 gsKit_prim_sprite_texture(gsGlobal, &tex, 0, 0, 32, 0, 640, 480, 32 + 320, 240, 0, 0x80808080);





 GS_SET_DISPFB2(gsGlobal->ScreenBuffer[gsGlobal->ActiveBuffer & 1] / 8192,
  gsGlobal->Width / 64, gsGlobal->PSM, 0, 0 );
 gsGlobal->ActiveBuffer ^= 1;
 gsGlobal->PrimContext ^= 1;
 gsGlobal->EvenOrOdd = ((GSREG *) GS_CSR)->FIELD;
 gsKit_setactive(gsGlobal);


}
