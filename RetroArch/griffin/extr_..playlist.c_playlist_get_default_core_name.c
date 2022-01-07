
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* default_core_name; } ;
typedef TYPE_1__ playlist_t ;



char *playlist_get_default_core_name(playlist_t *playlist)
{
   if (!playlist)
      return ((void*)0);
   return playlist->default_core_name;
}
