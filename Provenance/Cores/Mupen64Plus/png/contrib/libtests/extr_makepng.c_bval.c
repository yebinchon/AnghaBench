
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_structrp ;
typedef scalar_t__* png_charp ;
typedef int png_byte ;


 int png_error (int ,char*) ;
 unsigned long strtoul (scalar_t__*,char**,int ) ;

__attribute__((used)) static png_byte
bval(png_const_structrp png_ptr, png_charp param, unsigned int maxval)
{
   char *endptr = ((void*)0);
   unsigned long int l = strtoul(param, &endptr, 0 );

   if (param[0] && *endptr == 0 && l <= maxval)
      return (png_byte)l;

   else
      png_error(png_ptr, "sBIT: invalid sBIT value");
}
