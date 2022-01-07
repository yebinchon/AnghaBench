
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpng_t ;
typedef enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;







 int rpng_is_valid (int *) ;

bool image_transfer_is_valid(
      void *data,
      enum image_type_enum type)
{
   switch (type)
   {
      case 129:



         break;

      case 131:



         break;

      case 128:



         break;

      case 132:
         return 1;
      case 130:
         break;
   }

   return 0;
}
