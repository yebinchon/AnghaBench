
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double height; double width; } ;
typedef TYPE_1__ VIDEOMODE_resolution_t ;
typedef size_t VIDEOMODE_MODE_t ;
struct TYPE_6__ {double asp_ratio; double h_mult; } ;


 int PLATFORM_SupportsVideomode (size_t,int ,int) ;
 int TRUE ;


 scalar_t__ VIDEOMODE_KEEP_ASPECT_NONE ;
 scalar_t__ VIDEOMODE_KEEP_ASPECT_REAL ;





 double VIDEOMODE_custom_stretch ;
 double VIDEOMODE_dest_height ;
 double VIDEOMODE_dest_width ;
 int VIDEOMODE_fit ;
 double VIDEOMODE_host_aspect_ratio_h ;
 double VIDEOMODE_host_aspect_ratio_w ;
 scalar_t__ VIDEOMODE_keep_aspect ;
 int VIDEOMODE_stretch ;
 TYPE_2__* display_modes ;

__attribute__((used)) static void ComputeVideoArea(VIDEOMODE_resolution_t const *res, VIDEOMODE_resolution_t const *screen_res,
                             VIDEOMODE_MODE_t display_mode, unsigned int out_w, unsigned int out_h,
                             double *mult_w, double *mult_h, int rotate)
{
 double asp_ratio;


 if (VIDEOMODE_keep_aspect == VIDEOMODE_KEEP_ASPECT_REAL) {
  if (rotate)
   asp_ratio = display_modes[display_mode].asp_ratio * screen_res->height / VIDEOMODE_host_aspect_ratio_h
               * VIDEOMODE_host_aspect_ratio_w / screen_res->width;
  else
   asp_ratio = display_modes[display_mode].asp_ratio * screen_res->width / VIDEOMODE_host_aspect_ratio_w
               * VIDEOMODE_host_aspect_ratio_h / screen_res->height;
 }
 else
  asp_ratio = 1.0 / display_modes[display_mode].h_mult;

 if (!PLATFORM_SupportsVideomode(display_mode, TRUE, rotate)) {
  *mult_w = 1.0;
  *mult_h = display_modes[display_mode].h_mult;
  VIDEOMODE_dest_width = out_w * *mult_w;
  VIDEOMODE_dest_height = out_h * *mult_h;
  return;
 }

 switch (VIDEOMODE_stretch) {
 case 128:
 case 132:
 case 131:
 case 130:
  *mult_w = asp_ratio * VIDEOMODE_custom_stretch;
  *mult_h = VIDEOMODE_custom_stretch;
  break;
 case 129:
  {
   unsigned int imult_w = (double) res->width / out_w / asp_ratio;
   unsigned int imult_h = res->height / out_h;
   if (imult_w == 0)
    imult_w = 1;
   if (imult_h == 0)
    imult_h = 1;
   if (VIDEOMODE_keep_aspect == VIDEOMODE_KEEP_ASPECT_NONE) {
    *mult_w = (double)imult_w * asp_ratio;
   } else {
    switch (VIDEOMODE_fit) {
    case 133:
     imult_h = imult_w;
     break;
    case 134:
     break;
    default:
     if (imult_w < imult_h)
      imult_h = imult_w;
    }
    *mult_w = (double)imult_h * asp_ratio;
   }
   *mult_h = imult_h;
  }
  break;
 default:
  {
   double imult_w = (double) res->width / out_w / asp_ratio;
   double imult_h = (double) res->height / out_h;
   if (imult_w < 1.0)
    imult_w = 1.0;
   if (imult_h < 1.0)
    imult_h = 1.0;
   if (VIDEOMODE_keep_aspect == VIDEOMODE_KEEP_ASPECT_NONE) {
    *mult_w = imult_w * asp_ratio;
   } else {
    switch (VIDEOMODE_fit) {
    case 133:
     imult_h = imult_w;
     break;
    case 134:
     break;
    default:
     if (imult_w < imult_h)
      imult_h = imult_w;
    }
    *mult_w = imult_h * asp_ratio;
   }
   *mult_h = imult_h;

  }
 }
 VIDEOMODE_dest_width = *mult_w * out_w;
 VIDEOMODE_dest_height = *mult_h * out_h;
}
