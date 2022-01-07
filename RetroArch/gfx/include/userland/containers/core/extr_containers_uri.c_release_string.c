
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

__attribute__((used)) static void release_string( char **str )
{
   if (*str)
   {
      free(*str);
      *str = ((void*)0);
   }
}
