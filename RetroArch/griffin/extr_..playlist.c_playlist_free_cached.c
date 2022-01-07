
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * playlist_cached ;
 int playlist_free (int *) ;

void playlist_free_cached(void)
{
   playlist_free(playlist_cached);
   playlist_cached = ((void*)0);
}
