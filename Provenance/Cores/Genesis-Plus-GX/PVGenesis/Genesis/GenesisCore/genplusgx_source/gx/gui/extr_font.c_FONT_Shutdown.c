
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fontHeader ;
 scalar_t__ fontTexture ;
 int free (scalar_t__) ;
 scalar_t__ ipl_fontarea ;

void FONT_Shutdown(void)
{
  if (fontHeader)
    free(ipl_fontarea);
  if (fontTexture)
    free(fontTexture);
}
