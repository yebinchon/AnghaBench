
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregl ;

__attribute__((used)) static void gp2x_video_setpalette_(int *pal, int len)
{

 int i;
 for (i = 0; i < len; i++)
 {
  int c = pal[i];
  c = ((c >> 8) & 0xf800) | ((c >> 5) & 0x07c0) | ((c >> 3) & 0x001f);
  memregl[0x4070>>2] = (i << 24) | c;
 }
}
