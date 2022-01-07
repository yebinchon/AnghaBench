
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linear_from_sRGB (unsigned int) ;

double
finvsRGB(unsigned int i)
{
   return 65535 * linear_from_sRGB(i/255.);
}
