
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;






 void* rbmp_alloc () ;
 void* rjpeg_alloc () ;
 void* rpng_alloc () ;
 void* rtga_alloc () ;

void *image_transfer_new(enum image_type_enum type)
{
   switch (type)
   {
      case 129:



         break;

      case 130:



         break;

      case 128:



         break;

      case 131:



         break;

      default:
         break;
   }

   return ((void*)0);
}
