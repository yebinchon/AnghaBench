
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtga_t ;
typedef int rpng_t ;
typedef int rjpeg_t ;
typedef int rbmp_t ;
typedef enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;







 int rbmp_free (int *) ;
 int rjpeg_free (int *) ;
 int rpng_free (int *) ;
 int rtga_free (int *) ;

void image_transfer_free(void *data, enum image_type_enum type)
{
   switch (type)
   {
      case 128:



         break;
      case 129:
         {





         }
         break;
      case 131:



         break;
      case 132:



         break;
      case 130:
         break;
   }
}
