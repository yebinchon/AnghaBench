
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;


 int * playlist_cached ;
 int * playlist_init (char const*,size_t) ;

bool playlist_init_cached(const char *path, size_t size)
{
   playlist_t *playlist = playlist_init(path, size);
   if (!playlist)
      return 0;

   playlist_cached = playlist;
   return 1;
}
