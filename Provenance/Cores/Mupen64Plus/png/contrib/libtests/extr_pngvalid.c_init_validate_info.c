
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned int sbit; int isbit_shift; unsigned int sbit_max; int screen_gamma; int screen_inverse; unsigned int outmax; double outquant; scalar_t__ do_background; double background_red; double background_green; double background_blue; int gamma_correction; int file_inverse; int scale16; int outlog; scalar_t__ maxout; scalar_t__ maxout_total; int maxcalc; int maxpc; int maxabs; int use_input_precision; TYPE_4__* dp; int pp; } ;
typedef TYPE_3__ validate_info ;
typedef int png_const_structp ;
typedef unsigned int png_byte ;
struct TYPE_8__ {double red; double green; double blue; } ;
struct TYPE_7__ {int colour_type; scalar_t__ has_tRNS; scalar_t__ is_transparent; } ;
struct TYPE_10__ {int sbit; int screen_gamma; scalar_t__ do_background; int background_gamma; int file_gamma; int scale16; TYPE_2__ background_color; TYPE_1__ this; int pm; int use_input_precision; } ;
typedef TYPE_4__ gamma_display ;


 int PNG_COLOR_MASK_ALPHA ;
 scalar_t__ PNG_GAMMA_THRESHOLD ;
 int abserr (int ,int,int) ;
 int calcerr (int ,int,int) ;
 scalar_t__ fabs (double const) ;
 scalar_t__ outerr (int ,int,int) ;
 int outlog (int ,int,int) ;
 double output_quantization_factor (int ,int,int) ;
 int pcerr (int ,int,int) ;
 double pow (double,double const) ;

__attribute__((used)) static void
init_validate_info(validate_info *vi, gamma_display *dp, png_const_structp pp,
    int in_depth, int out_depth)
{
   const unsigned int outmax = (1U<<out_depth)-1;

   vi->pp = pp;
   vi->dp = dp;

   if (dp->sbit > 0 && dp->sbit < in_depth)
   {
      vi->sbit = dp->sbit;
      vi->isbit_shift = in_depth - dp->sbit;
   }

   else
   {
      vi->sbit = (png_byte)in_depth;
      vi->isbit_shift = 0;
   }

   vi->sbit_max = (1U << vi->sbit)-1;




   vi->screen_gamma = dp->screen_gamma;
   if (fabs(vi->screen_gamma-1) < PNG_GAMMA_THRESHOLD)
      vi->screen_gamma = vi->screen_inverse = 0;
   else
      vi->screen_inverse = 1/vi->screen_gamma;

   vi->use_input_precision = dp->use_input_precision;
   vi->outmax = outmax;
   vi->maxabs = abserr(dp->pm, in_depth, out_depth);
   vi->maxpc = pcerr(dp->pm, in_depth, out_depth);
   vi->maxcalc = calcerr(dp->pm, in_depth, out_depth);
   vi->maxout = outerr(dp->pm, in_depth, out_depth);
   vi->outquant = output_quantization_factor(dp->pm, in_depth, out_depth);
   vi->maxout_total = vi->maxout + vi->outquant * .5;
   vi->outlog = outlog(dp->pm, in_depth, out_depth);

   if ((dp->this.colour_type & PNG_COLOR_MASK_ALPHA) != 0 ||
      (dp->this.colour_type == 3 && dp->this.is_transparent) ||
      ((dp->this.colour_type == 0 || dp->this.colour_type == 2) &&
       dp->this.has_tRNS))
   {
      vi->do_background = dp->do_background;

      if (vi->do_background != 0)
      {
         const double bg_inverse = 1/dp->background_gamma;
         double r, g, b;


         r = dp->background_color.red; r /= outmax;
         g = dp->background_color.green; g /= outmax;
         b = dp->background_color.blue; b /= outmax;






         {
            r = pow(r, bg_inverse);
            g = pow(g, bg_inverse);
            b = pow(b, bg_inverse);
         }

         vi->background_red = r;
         vi->background_green = g;
         vi->background_blue = b;
      }
   }
   else
      vi->do_background = 0;

   if (vi->do_background == 0)
      vi->background_red = vi->background_green = vi->background_blue = 0;

   vi->gamma_correction = 1/(dp->file_gamma*dp->screen_gamma);
   if (fabs(vi->gamma_correction-1) < PNG_GAMMA_THRESHOLD)
      vi->gamma_correction = 0;

   vi->file_inverse = 1/dp->file_gamma;
   if (fabs(vi->file_inverse-1) < PNG_GAMMA_THRESHOLD)
      vi->file_inverse = 0;

   vi->scale16 = dp->scale16;
}
