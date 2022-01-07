
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_get_title_left_thumbnails (char const*,char const*,unsigned int,char*,size_t) ;

__attribute__((used)) static int action_get_title_dropdown_playlist_left_thumbnail_mode_item(
      const char *path, const char *label, unsigned menu_type, char *s, size_t len)
{
   return action_get_title_left_thumbnails(path, label, menu_type, s, len);
}
