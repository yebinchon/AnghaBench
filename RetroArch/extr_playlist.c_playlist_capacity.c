
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cap; } ;
typedef TYPE_1__ playlist_t ;



size_t playlist_capacity(playlist_t *playlist)
{
   if (!playlist)
      return 0;
   return playlist->cap;
}
