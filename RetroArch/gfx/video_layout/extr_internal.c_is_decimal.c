
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,float*) ;

bool is_decimal(const char *str)
{
   float v;

   v = 0.0f;
   sscanf(str, "%f", &v);
   return (v && v != (int)v);
}
