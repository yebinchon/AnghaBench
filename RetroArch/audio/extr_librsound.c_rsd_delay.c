
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rsound_t ;


 int retro_assert (int ) ;
 int rsnd_get_delay (int *) ;

size_t rsd_delay(rsound_t *rd)
{
   retro_assert(rd != ((void*)0));
   int ptr = rsnd_get_delay(rd);
   if ( ptr < 0 )
      ptr = 0;

   return ptr;
}
