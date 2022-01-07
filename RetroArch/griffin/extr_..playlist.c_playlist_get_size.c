
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ playlist_t ;



uint32_t playlist_get_size(playlist_t *playlist)
{
   if (!playlist)
      return 0;
   return (uint32_t)playlist->size;
}
