
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 scalar_t__ calloc (int,int) ;
 int free (void*) ;
 int memcpy (char**,char const**,int) ;
 int memmove (char**,char**,int) ;
 int retro_assert (char const**) ;

__attribute__((used)) static void shuffle_block(char **begin, char **last, char **end)
{
   ptrdiff_t len = last - begin;
   const char **tmp = (const char**)calloc(len, sizeof(const char*));

   retro_assert(tmp);

   memcpy((void*)tmp, begin, len * sizeof(const char*));
   memmove(begin, last, (end - last) * sizeof(const char*));
   memcpy(end - len, tmp, len * sizeof(const char*));

   free((void*)tmp);
}
