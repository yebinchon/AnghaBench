
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rsound_t ;


 int retro_assert (int ) ;
 int rsd_start (int *) ;
 int rsd_stop (int *) ;

int rsd_pause(rsound_t* rsound, int enable)
{
   retro_assert(rsound != ((void*)0));
   if ( enable )
      return rsd_stop(rsound);

   return rsd_start(rsound);
}
