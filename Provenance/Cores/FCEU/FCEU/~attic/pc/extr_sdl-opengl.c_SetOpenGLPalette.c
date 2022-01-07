
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int GL_RGB ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_UNSIGNED_BYTE ;
 int HiBuffer ;
 int SetPaletteBlitToHigh (int *) ;
 int p_glBindTexture (int ,int ) ;
 int p_glColorTableEXT (int ,int ,int,int ,int ,int *) ;
 int * textures ;

void SetOpenGLPalette(uint8 *data)
{
 if(!HiBuffer)
 {
  p_glBindTexture(GL_TEXTURE_2D, textures[0]);
  p_glColorTableEXT(GL_TEXTURE_2D,GL_RGB,256,GL_RGBA,GL_UNSIGNED_BYTE,data);
 }
 else
  SetPaletteBlitToHigh((uint8*)data);
}
