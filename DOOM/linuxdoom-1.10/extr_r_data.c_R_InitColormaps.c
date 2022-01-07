
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int PU_STATIC ;
 int W_GetNumForName (char*) ;
 int W_LumpLength (int) ;
 int W_ReadLump (int,int *) ;
 int * Z_Malloc (int,int ,int ) ;
 int * colormaps ;

void R_InitColormaps (void)
{
    int lump, length;



    lump = W_GetNumForName("COLORMAP");
    length = W_LumpLength (lump) + 255;
    colormaps = Z_Malloc (length, PU_STATIC, 0);
    colormaps = (byte *)( ((int)colormaps + 255)&~0xff);
    W_ReadLump (lump,colormaps);
}
