
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
struct playlist_entry {char* core_name; scalar_t__ runtime_status; char* runtime_str; char* last_played_str; } ;
struct TYPE_8__ {int content_runtime_log_aggregate; int content_runtime_log; int playlist_show_sublabels; } ;
struct TYPE_7__ {scalar_t__ playlist_sublabel_runtime_type; } ;
struct TYPE_6__ {char const* menu_driver; } ;
struct TYPE_9__ {TYPE_3__ bools; TYPE_2__ uints; TYPE_1__ arrays; } ;
typedef TYPE_4__ settings_t ;
typedef int playlist_t ;
typedef int file_list_t ;


 int MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ;
 int MENU_ENUM_LABEL_FAVORITES_TAB ;
 int MENU_ENUM_LABEL_HISTORY_TAB ;
 int MENU_ENUM_LABEL_HORIZONTAL_MENU ;
 int MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY ;
 int MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_CORE ;
 scalar_t__ PLAYLIST_RUNTIME_AGGREGATE ;
 scalar_t__ PLAYLIST_RUNTIME_PER_CORE ;
 scalar_t__ PLAYLIST_RUNTIME_UNKNOWN ;
 scalar_t__ PLAYLIST_RUNTIME_VALID ;
 TYPE_4__* config_get_ptr () ;
 char* msg_hash_to_str (int ) ;
 int * playlist_get_cached () ;
 int playlist_get_index (int *,unsigned int,struct playlist_entry const**) ;
 unsigned int playlist_get_size (int *) ;
 int runtime_update_playlist (int *,unsigned int) ;
 scalar_t__ string_is_empty (char*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int action_bind_sublabel_playlist_entry(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   settings_t *settings = config_get_ptr();
   playlist_t *playlist = ((void*)0);
   const struct playlist_entry *entry = ((void*)0);

   if (!settings->bools.playlist_show_sublabels || string_is_equal(settings->arrays.menu_driver, "ozone"))
      return 0;


   playlist = playlist_get_cached();

   if (!playlist)
      return 0;

   if (i >= playlist_get_size(playlist))
      return 0;


   playlist_get_index(playlist, i, &entry);


   if (string_is_empty(entry->core_name) || string_is_equal(entry->core_name, "DETECT"))
      return 0;


   strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_CORE), len);
   strlcat(s, " ", len);
   strlcat(s, entry->core_name, len);



   if (((settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_PER_CORE) &&
         !settings->bools.content_runtime_log) ||
       ((settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_AGGREGATE) &&
         !settings->bools.content_runtime_log_aggregate))
      return 0;



   if (!string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY)) &&
       !string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_HISTORY_TAB)) &&
       !string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST)) &&
       !string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES_TAB)) &&
       !string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)) &&
       !string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_HORIZONTAL_MENU)))
      return 0;


   if (entry->runtime_status == PLAYLIST_RUNTIME_UNKNOWN)
      runtime_update_playlist(playlist, i);


   if (entry->runtime_status == PLAYLIST_RUNTIME_VALID)
   {
      int n = 0;
      char tmp[64];

      tmp[0 ] = '\n';
      tmp[1 ] = '\0';

      n = strlcat(tmp, entry->runtime_str, sizeof(tmp));

      tmp[n ] = '\n';
      tmp[n+1] = '\0';



      n = strlcat(tmp, entry->last_played_str, sizeof(tmp));

      if ((n < 0) || (n >= 64))
         n = 0;

      if (!string_is_empty(tmp))
         strlcat(s, tmp, len);
   }

   return 0;
}
