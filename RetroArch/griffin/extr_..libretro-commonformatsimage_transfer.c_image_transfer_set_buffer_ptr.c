
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int rtga_t ;
typedef int rpng_t ;
typedef int rjpeg_t ;
typedef int rbmp_t ;
typedef enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;







 int rbmp_set_buf_ptr (int *,int *) ;
 int rjpeg_set_buf_ptr (int *,int *) ;
 int rpng_set_buf_ptr (int *,int *,size_t) ;
 int rtga_set_buf_ptr (int *,int *) ;

void image_transfer_set_buffer_ptr(
      void *data,
      enum image_type_enum type,
      void *ptr,
      size_t len)
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



         break;
      case 130:
         break;
   }
}
