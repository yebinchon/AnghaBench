
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_warning_parameters ;
typedef scalar_t__ png_int_32 ;
typedef char* png_charp ;
typedef int png_alloc_size_t ;


 char* PNG_FORMAT_NUMBER (char*,int,int) ;
 int PNG_NUMBER_BUFFER_SIZE ;
 int png_warning_parameter (int ,int,char*) ;

void
png_warning_parameter_signed(png_warning_parameters p, int number, int format,
    png_int_32 value)
{
   png_alloc_size_t u;
   png_charp str;
   char buffer[PNG_NUMBER_BUFFER_SIZE];


   u = (png_alloc_size_t)value;
   if (value < 0)
      u = ~u + 1;

   str = PNG_FORMAT_NUMBER(buffer, format, u);

   if (value < 0 && str > buffer)
      *--str = '-';

   png_warning_parameter(p, number, str);
}
