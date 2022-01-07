
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int directory_playlist; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int playlist_path ;


 int PATH_MAX_LENGTH ;
 TYPE_2__* config_get_ptr () ;
 int fill_pathname_join (char*,int ,char const*,int) ;
 scalar_t__ string_is_empty (int ) ;
 int task_push_pl_thumbnail_download (char const*,char*) ;

__attribute__((used)) static int action_ok_pl_content_thumbnails(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   return -1;

}
