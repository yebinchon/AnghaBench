
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int png_voidp ;
typedef TYPE_2__* png_imagep ;
typedef int jmp_buf ;
struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int error_buf; } ;


 int png_image_free (TYPE_2__* volatile) ;
 scalar_t__ setjmp (int ) ;

int
png_safe_execute(png_imagep image_in, int (*function)(png_voidp), png_voidp arg)
{
   volatile png_imagep image = image_in;
   volatile int result;
   volatile png_voidp saved_error_buf;
   jmp_buf safe_jmpbuf;


   saved_error_buf = image->opaque->error_buf;
   result = setjmp(safe_jmpbuf) == 0;

   if (result != 0)
   {

      image->opaque->error_buf = safe_jmpbuf;
      result = function(arg);
   }

   image->opaque->error_buf = saved_error_buf;


   if (result == 0)
      png_image_free(image);

   return result;
}
