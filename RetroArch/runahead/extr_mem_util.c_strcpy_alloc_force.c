
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ calloc (int,int) ;
 char* strcpy_alloc (char const*) ;

char *strcpy_alloc_force(const char *src)
{
   char *result = strcpy_alloc(src);
   if (!result)
      return (char*)calloc(1, 1);
   return result;
}
