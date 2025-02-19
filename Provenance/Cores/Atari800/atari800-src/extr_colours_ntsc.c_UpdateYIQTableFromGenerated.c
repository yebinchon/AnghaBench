
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double color_delay; double gamma; double contrast; double brightness; scalar_t__ white_level; scalar_t__ black_level; } ;


 TYPE_1__ COLOURS_NTSC_setup ;
 double M_PI ;
 double cos (double) ;
 double pow (double,double const) ;
 double sin (double) ;

__attribute__((used)) static void UpdateYIQTableFromGenerated(double yiq_table[768], const double start_angle, const double start_saturation)
{

 double color_diff = COLOURS_NTSC_setup.color_delay * M_PI / 180.0;

 int cr, lm;

 double scaled_black_level = (double)COLOURS_NTSC_setup.black_level / 255.0;
 double scaled_white_level = (double)COLOURS_NTSC_setup.white_level / 255.0;
 const double gamma = 1 - COLOURS_NTSC_setup.gamma / 2.0;


 double luma_mult[16]={
  0.6941, 0.7091, 0.7241, 0.7401,
  0.7560, 0.7741, 0.7931, 0.8121,
  0.8260, 0.8470, 0.8700, 0.8930,
  0.9160, 0.9420, 0.9690, 1.0000};

 for (cr = 0; cr < 16; cr ++) {
  double angle = start_angle - (cr - 1) * color_diff;
  double saturation = (cr ? (start_saturation + 1) * 0.175f: 0.0);
  double i = sin(angle) * saturation;
  double q = cos(angle) * saturation;

  for (lm = 0; lm < 16; lm ++) {

   double y = (luma_mult[lm] - luma_mult[0]) / (luma_mult[15] - luma_mult[0]);
   y = pow(y, gamma);
   y *= COLOURS_NTSC_setup.contrast * 0.5 + 1;
   y += COLOURS_NTSC_setup.brightness * 0.5;


   y = y * (scaled_white_level - scaled_black_level) + scaled_black_level;






   *yiq_table++ = y;
   *yiq_table++ = i;
   *yiq_table++ = q;
  }
 }
}
