
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef void* png_uint_16 ;
typedef int png_const_voidp ;
typedef char* png_const_charp ;
struct TYPE_16__ {int* error; scalar_t__ in_opaque; scalar_t__ accumulate; scalar_t__ output_8bit; int (* out_gp ) (TYPE_2__*,int ) ;int (* from_linear ) (TYPE_2__*,TYPE_2__*,int *) ;int background; int (* transform ) (TYPE_2__*,TYPE_2__*,int ) ;int (* in_gp ) (TYPE_2__*,int ) ;} ;
typedef TYPE_1__ Transform ;
struct TYPE_17__ {scalar_t__ a; scalar_t__ r; scalar_t__ g; scalar_t__ b; } ;
typedef TYPE_2__ Pixel ;


 int abs (scalar_t__) ;
 int logpixel (TYPE_1__*,int ,int ,TYPE_2__*,TYPE_2__*,TYPE_2__*,char*) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,TYPE_2__*,int ) ;
 int stub3 (TYPE_2__*,TYPE_2__*,int ) ;
 int stub4 (TYPE_2__*,TYPE_2__*,int *) ;
 int stub5 (TYPE_2__*,int ) ;

__attribute__((used)) static int
cmppixel(Transform *transform, png_const_voidp in, png_const_voidp out,
   png_uint_32 x, png_uint_32 y )
{
   int maxerr;
   png_const_charp errmsg;
   Pixel pixel_in, pixel_calc, pixel_out;

   transform->in_gp(&pixel_in, in);

   if (transform->from_linear == ((void*)0))
      transform->transform(&pixel_calc, &pixel_in, transform->background);

   else
   {
      transform->transform(&pixel_out, &pixel_in, transform->background);
      transform->from_linear(&pixel_calc, &pixel_out, ((void*)0));
   }

   transform->out_gp(&pixel_out, out);


   if (pixel_calc.a == pixel_out.a && pixel_calc.r == pixel_out.r &&
      pixel_calc.g == pixel_out.g && pixel_calc.b == pixel_out.b)
      return 1;





   if (transform->output_8bit && pixel_calc.a == 0 && pixel_out.a == 0)
      return 1;




   errmsg = ((void*)0);
   {
      int err_a = abs(pixel_calc.a-pixel_out.a);

      if (err_a > transform->error[3])
      {

         if (transform->accumulate)
            transform->error[3] = (png_uint_16)err_a;

         else
            errmsg = "alpha";
      }
   }




   if (errmsg == ((void*)0) && transform->output_8bit &&
      (pixel_calc.a == 0 || pixel_out.a == 0))
      return 1;

   if (errmsg == ((void*)0))
   {
      int err_r = abs(pixel_calc.r - pixel_out.r);
      int err_g = abs(pixel_calc.g - pixel_out.g);
      int err_b = abs(pixel_calc.b - pixel_out.b);
      int limit;

      if ((err_r | err_g | err_b) == 0)
         return 1;


      if (pixel_in.a >= transform->in_opaque)
      {
         errmsg = "opaque component";
         limit = 2;
      }

      else if (pixel_in.a > 0)
      {
         errmsg = "alpha component";
         limit = 1;
      }

      else
      {
         errmsg = "transparent component (background)";
         limit = 0;
      }

      maxerr = err_r;
      if (maxerr < err_g) maxerr = err_g;
      if (maxerr < err_b) maxerr = err_b;

      if (maxerr <= transform->error[limit])
         return 1;




      if (transform->accumulate)
      {
         transform->error[limit] = (png_uint_16)maxerr;
         return 1;
      }
   }


   return logpixel(transform, x, y, &pixel_in, &pixel_calc, &pixel_out, errmsg);
}
