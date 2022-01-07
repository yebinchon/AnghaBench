
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void ClearTextureToColor(u32 *texture, u32 color, int w, int h)
{
   int i;

   for (i = 0; i < (w * h); i++)
      texture[i] = color;
}
