
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;


 int * playlist_cached ;

playlist_t *playlist_get_cached(void)
{
   if (playlist_cached)
      return playlist_cached;
   return ((void*)0);
}
