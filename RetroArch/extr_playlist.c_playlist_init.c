
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct TYPE_5__ {int modified; size_t cap; void* left_thumbnail_mode; void* right_thumbnail_mode; int label_display_mode; struct playlist_entry* entries; int * default_core_path; int * default_core_name; int conf_path; scalar_t__ size; } ;
typedef TYPE_1__ playlist_t ;


 int LABEL_DISPLAY_MODE_DEFAULT ;
 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 scalar_t__ calloc (size_t,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int playlist_read_file (TYPE_1__*,char const*) ;
 int strdup (char const*) ;

playlist_t *playlist_init(const char *path, size_t size)
{
   struct playlist_entry *entries = ((void*)0);
   playlist_t *playlist = (playlist_t*)malloc(sizeof(*playlist));
   if (!playlist)
      return ((void*)0);

   entries = (struct playlist_entry*)calloc(size, sizeof(*entries));
   if (!entries)
   {
      free(playlist);
      return ((void*)0);
   }

   playlist->modified = 0;
   playlist->size = 0;
   playlist->cap = size;
   playlist->conf_path = strdup(path);
   playlist->default_core_name = ((void*)0);
   playlist->default_core_path = ((void*)0);
   playlist->entries = entries;
   playlist->label_display_mode = LABEL_DISPLAY_MODE_DEFAULT;
   playlist->right_thumbnail_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   playlist->left_thumbnail_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   playlist_read_file(playlist, path);

   return playlist;
}
