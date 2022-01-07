
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* palette; scalar_t__ adjust; } ;
struct TYPE_3__ {double gamma; double hue; double contrast; double brightness; double saturation; } ;


 TYPE_2__ COLOURS_PAL_external ;
 TYPE_1__ COLOURS_PAL_setup ;
 int Colours_RGB2YUV (double,double,double,double*,double*,double*) ;
 double M_PI ;
 double cos (double const) ;
 double pow (double,double const) ;
 double sin (double const) ;

__attribute__((used)) static void GetYUVFromExternal(double yuv_table[256*5])
{
 double const gamma = 1 - COLOURS_PAL_setup.gamma / 2.0;
 unsigned char *ext_ptr = COLOURS_PAL_external.palette;
 int n;

 double const hue = COLOURS_PAL_setup.hue * M_PI;
 double const s = sin(hue);
 double const c = cos(hue);

 for (n = 0; n < 256; n ++) {

  double r = (double)*ext_ptr++ / 255.0;
  double g = (double)*ext_ptr++ / 255.0;
  double b = (double)*ext_ptr++ / 255.0;
  double y, u, v, tmp_u;
  Colours_RGB2YUV(r, g, b, &y, &u, &v);
  tmp_u = u;
  u = tmp_u * c - v * s;
  v = tmp_u * s + v * c;

  if (COLOURS_PAL_external.adjust) {
   y = pow(y, gamma);
   y *= COLOURS_PAL_setup.contrast * 0.5 + 1;
   y += COLOURS_PAL_setup.brightness * 0.5;
   if (y > 1.0)
    y = 1.0;
   else if (y < 0.0)
    y = 0.0;
   u *= COLOURS_PAL_setup.saturation + 1.0;
   v *= COLOURS_PAL_setup.saturation + 1.0;
  }

  *yuv_table++ = y;


  *yuv_table++ = u;
  *yuv_table++ = u;
  *yuv_table++ = v;
  *yuv_table++ = v;
 }
}
