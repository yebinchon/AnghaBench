
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned int) ;
 unsigned int* urlencode_lut ;
 int urlencode_lut_inited ;

void urlencode_lut_init(void)
{
   unsigned i;

   urlencode_lut_inited = 1;

   for (i = 0; i < 256; i++)
   {
      urlencode_lut[i] = isalnum(i) || i == '*' || i == '-' || i == '.' || i == '_' || i == '/' ? i : 0;
   }
}
