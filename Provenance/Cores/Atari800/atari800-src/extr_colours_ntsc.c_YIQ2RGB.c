
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Colours_SetRGB (int,int,int,int,int*) ;

__attribute__((used)) static void YIQ2RGB(int colourtable[256], const double yiq_table[768])
{
 const double *yiq_ptr = yiq_table;
 int n;
 for (n = 0; n < 256; n ++) {
  double y = *yiq_ptr++;
  double i = *yiq_ptr++;
  double q = *yiq_ptr++;
  double r, g, b;
  r = y + 0.9563 * i + 0.6210 * q;
  g = y - 0.2721 * i - 0.6474 * q;
  b = y - 1.1070 * i + 1.7046 * q;
  Colours_SetRGB(n, (int) (r * 255), (int) (g * 255), (int) (b * 255), colourtable);
 }
}
