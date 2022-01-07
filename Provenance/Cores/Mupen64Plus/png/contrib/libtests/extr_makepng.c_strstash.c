
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * png_const_charp ;
typedef int * png_charp ;


 int * malloc (scalar_t__) ;
 int * strcpy (int *,int *) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static png_charp
strstash(png_const_charp foo)
{



   if (foo != ((void*)0))
   {
      png_charp bar = malloc(strlen(foo)+1);
      return strcpy(bar, foo);
   }

   return ((void*)0);
}
