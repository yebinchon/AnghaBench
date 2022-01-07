
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* entries; } ;
typedef TYPE_2__ playlist_t ;
struct TYPE_4__ {char* crc32; } ;



void playlist_get_crc32(playlist_t *playlist, size_t idx,
      const char **crc32)
{
   if (!playlist)
      return;

   if (crc32)
      *crc32 = playlist->entries[idx].crc32;
}
