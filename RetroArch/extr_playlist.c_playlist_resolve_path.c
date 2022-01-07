
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef enum playlist_file_mode { ____Placeholder_playlist_file_mode } playlist_file_mode ;


 int PATH_MAX_LENGTH ;
 int PLAYLIST_LOAD ;
 int fill_pathname_abbreviate_special (char*,char*,size_t) ;
 int fill_pathname_expand_special (char*,char*,int) ;
 int path_resolve_realpath (char*,size_t,int) ;
 int realpath (char*,char*) ;
 int strlcpy (char*,char*,size_t) ;

void playlist_resolve_path(enum playlist_file_mode mode,
      char *path, size_t size)
{
   if (mode == PLAYLIST_LOAD)
      return;

   path_resolve_realpath(path, size, 1);

}
