
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_3__* png_const_colorp ;
struct TYPE_12__ {int ir; int ig; int ib; int dr; int dg; int db; } ;
struct TYPE_14__ {int in_opaque; int output_8bit; int accumulate; int * error_ptr; int * error; TYPE_2__ background_color; TYPE_2__* background; int * from_linear; void* transform; void* out_gp; void* in_gp; scalar_t__ is_palette; TYPE_5__ const* out_image; TYPE_5__* in_image; } ;
typedef TYPE_4__ Transform ;
struct TYPE_11__ {int format; } ;
struct TYPE_15__ {int opts; TYPE_1__ image; } ;
struct TYPE_13__ {size_t red; size_t green; size_t blue; } ;
typedef TYPE_5__ Image ;


 int ACCUMULATE ;
 int BASE_FORMATS ;
 int BUFFER_INIT8 ;
 int PNG_FORMAT_FLAG_ALPHA ;
 int PNG_FORMAT_FLAG_COLOR ;
 int PNG_FORMAT_FLAG_COLORMAP ;
 int PNG_FORMAT_FLAG_LINEAR ;
 int exit (int) ;
 int fprintf (int ,char*,int,int) ;
 void* get_pixel (int) ;
 int *** gpc_error ;
 int *** gpc_error_to_colormap ;
 int *** gpc_error_via_linear ;
 void*** gpc_fn ;
 void*** gpc_fn_colormapped ;
 int memset (TYPE_4__*,int ,int) ;
 void** sRGB_to_d ;
 int stderr ;

__attribute__((used)) static void
transform_from_formats(Transform *result, Image *in_image,
   const Image *out_image, png_const_colorp background, int via_linear)
{
   png_uint_32 in_format, out_format;
   png_uint_32 in_base, out_base;

   memset(result, 0, sizeof *result);


   result->in_image = in_image;
   result->out_image = out_image;

   in_format = in_image->image.format;
   out_format = out_image->image.format;

   if (in_format & PNG_FORMAT_FLAG_LINEAR)
      result->in_opaque = 65535;
   else
      result->in_opaque = 255;

   result->output_8bit = (out_format & PNG_FORMAT_FLAG_LINEAR) == 0;

   result->is_palette = 0;
   result->accumulate = (in_image->opts & ACCUMULATE) != 0;


   result->in_gp = get_pixel(in_format);
   result->out_gp = get_pixel(out_format);


   in_format &= BASE_FORMATS | PNG_FORMAT_FLAG_COLORMAP;
   in_base = in_format & BASE_FORMATS;
   out_format &= BASE_FORMATS | PNG_FORMAT_FLAG_COLORMAP;
   out_base = out_format & BASE_FORMATS;

   if (via_linear)
   {

      if (out_format & (PNG_FORMAT_FLAG_LINEAR|PNG_FORMAT_FLAG_COLORMAP))
      {
         fprintf(stderr, "internal transform via linear error 0x%x->0x%x\n",
            in_format, out_format);
         exit(1);
      }

      result->transform = gpc_fn[in_base][out_base | PNG_FORMAT_FLAG_LINEAR];
      result->from_linear = gpc_fn[out_base | PNG_FORMAT_FLAG_LINEAR][out_base];
      result->error_ptr = gpc_error_via_linear[in_format][out_format];
   }

   else if (~in_format & out_format & PNG_FORMAT_FLAG_COLORMAP)
   {




      result->transform = gpc_fn[in_base][out_base];
      result->from_linear = ((void*)0);
      result->error_ptr = gpc_error_to_colormap[in_base][out_base];
   }

   else
   {






      if (in_format & out_format & PNG_FORMAT_FLAG_COLORMAP)
         result->transform = gpc_fn_colormapped[in_base][out_base];
      else
         result->transform = gpc_fn[in_base][out_base];
      result->from_linear = ((void*)0);
      result->error_ptr = gpc_error[in_format][out_format];
   }





   result->background = ((void*)0);


   if (in_format & ~out_format & PNG_FORMAT_FLAG_ALPHA)
   {







      result->background = &result->background_color;

      if (out_format & PNG_FORMAT_FLAG_LINEAR || via_linear)
      {
         if (out_format & PNG_FORMAT_FLAG_COLORMAP)
         {
            result->background_color.ir =
               result->background_color.ig =
               result->background_color.ib = 0;
            result->background_color.dr =
               result->background_color.dg =
               result->background_color.db = 0;
         }

         else
         {
            result->background_color.ir =
               result->background_color.ig =
               result->background_color.ib = BUFFER_INIT8 * 257;
            result->background_color.dr =
               result->background_color.dg =
               result->background_color.db = 0;
         }
      }

      else
      {
         if (background != ((void*)0))
         {
            if (out_format & PNG_FORMAT_FLAG_COLOR)
            {
               result->background_color.ir = background->red;
               result->background_color.ig = background->green;
               result->background_color.ib = background->blue;



               result->background_color.dr = sRGB_to_d[background->red];
               result->background_color.dg = sRGB_to_d[background->green];
               result->background_color.db = sRGB_to_d[background->blue];
            }

            else
            {
               result->background_color.ir =
                  result->background_color.ig =
                  result->background_color.ib = background->green;



               result->background_color.dr =
                  result->background_color.dg =
                  result->background_color.db = sRGB_to_d[background->green];
            }
         }

         else if ((out_format & PNG_FORMAT_FLAG_COLORMAP) == 0)
         {
            result->background_color.ir =
               result->background_color.ig =
               result->background_color.ib = BUFFER_INIT8;



            result->background_color.dr =
               result->background_color.dg =
               result->background_color.db = sRGB_to_d[BUFFER_INIT8];
         }





         else
            result->background = ((void*)0);
      }
   }

   if (result->background == ((void*)0))
   {
      result->background_color.ir =
         result->background_color.ig =
         result->background_color.ib = -1;
      result->background_color.dr =
         result->background_color.dg =
         result->background_color.db = 1E30;
   }



   result->error[0] = result->error_ptr[0];
   result->error[1] = result->error_ptr[1];
   result->error[2] = result->error_ptr[2];
   result->error[3] = result->error_ptr[3];
}
