
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rate; scalar_t__ channels; int * port; int * host; } ;
typedef TYPE_1__ rsound_t ;


 int retro_assert (int) ;
 scalar_t__ rsnd_create_connection (TYPE_1__*) ;

int rsd_start(rsound_t *rsound)
{
   retro_assert(rsound != ((void*)0));
   retro_assert(rsound->rate > 0);
   retro_assert(rsound->channels > 0);
   retro_assert(rsound->host != ((void*)0));
   retro_assert(rsound->port != ((void*)0));

   if ( rsnd_create_connection(rsound) < 0 )
      return -1;

   return 0;
}
