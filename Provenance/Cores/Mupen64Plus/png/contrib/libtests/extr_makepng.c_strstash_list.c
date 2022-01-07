
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * png_const_charp ;
typedef scalar_t__* png_charp ;


 scalar_t__* malloc (size_t) ;
 int memcpy (scalar_t__*,int ,size_t) ;
 size_t strlen (int * const) ;

__attribute__((used)) static png_charp
strstash_list(const png_const_charp *text)
{
   size_t foo = 0;
   png_charp result, bar;
   const png_const_charp *line = text;

   while (*line != ((void*)0))
      foo += strlen(*line++);

   result = bar = malloc(foo+1);

   line = text;
   while (*line != ((void*)0))
   {
      foo = strlen(*line);
      memcpy(bar, *line++, foo);
      bar += foo;
   }

   *bar = 0;
   return result;
}
