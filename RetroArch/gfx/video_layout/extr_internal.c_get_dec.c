
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,float*) ;

float get_dec(const char *str)
{
   float res = 0.0f;
   sscanf(str, "%f", &res);

   return res;
}
