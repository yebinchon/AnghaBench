
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rsound_t ;


 int retro_assert (int ) ;
 int rsnd_get_ptr (int *) ;

size_t rsd_pointer(rsound_t *rsound)
{
   retro_assert(rsound != ((void*)0));
   int ptr;

   ptr = rsnd_get_ptr(rsound);

   return ptr;
}
