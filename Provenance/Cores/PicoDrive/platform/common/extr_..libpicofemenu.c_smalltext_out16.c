
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int g_menuscreen_w ;
 int me_sfont_w ;
 int smalltext_out16_ (int,int,char*,int) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void smalltext_out16(int x, int y, const char *texto, int color)
{
 char buffer[128];
 int maxw = (g_menuscreen_w - x) / me_sfont_w;

 if (maxw < 0)
  return;

 strncpy(buffer, texto, sizeof(buffer));
 if (maxw > sizeof(buffer) - 1)
  maxw = sizeof(buffer) - 1;
 buffer[maxw] = 0;

 smalltext_out16_(x, y, buffer, color);
}
