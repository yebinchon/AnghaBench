
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct playlist_entry {scalar_t__ runtime_status; char* runtime_str; char* last_played_str; int last_played_second; int last_played_minute; int last_played_hour; int last_played_day; int last_played_month; int last_played_year; int runtime_seconds; int runtime_minutes; int runtime_hours; int core_path; int path; int member_0; } ;
struct TYPE_6__ {int menu_driver; } ;
struct TYPE_5__ {scalar_t__ playlist_sublabel_runtime_type; scalar_t__ playlist_sublabel_last_played_style; } ;
struct TYPE_7__ {TYPE_2__ arrays; TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
typedef int runtime_str ;
typedef int runtime_log_t ;
typedef int playlist_t ;
typedef int last_played_str ;
typedef enum playlist_sublabel_last_played_style_type { ____Placeholder_playlist_sublabel_last_played_style_type } playlist_sublabel_last_played_style_type ;


 int PLAYLIST_LAST_PLAYED_STYLE_YMD_HMS ;
 scalar_t__ PLAYLIST_RUNTIME_MISSING ;
 scalar_t__ PLAYLIST_RUNTIME_PER_CORE ;
 scalar_t__ PLAYLIST_RUNTIME_VALID ;
 TYPE_3__* config_get_ptr () ;
 int free (int *) ;
 int playlist_get_index (int *,size_t,struct playlist_entry const**) ;
 size_t playlist_get_size (int *) ;
 int playlist_update_runtime (int *,size_t,struct playlist_entry*,int) ;
 int runtime_log_get_last_played (int *,int *,int *,int *,int *,int *,int *) ;
 int runtime_log_get_last_played_str (int *,char*,int,int) ;
 int runtime_log_get_runtime_hms (int *,int *,int *,int *) ;
 int runtime_log_get_runtime_str (int *,char*,int) ;
 scalar_t__ runtime_log_has_runtime (int *) ;
 int * runtime_log_init (int ,int ,int) ;
 scalar_t__ string_is_equal (int ,char*) ;

void runtime_update_playlist(playlist_t *playlist, size_t idx)
{
   settings_t *settings = config_get_ptr();
   runtime_log_t *runtime_log = ((void*)0);
   const struct playlist_entry *entry = ((void*)0);
   struct playlist_entry update_entry = {0};
   enum playlist_sublabel_last_played_style_type timedate_style;
   char runtime_str[64];
   char last_played_str[64];


   if (!playlist || !settings)
      return;

   if (idx >= playlist_get_size(playlist))
      return;



   update_entry.runtime_status = PLAYLIST_RUNTIME_MISSING;






   timedate_style = PLAYLIST_LAST_PLAYED_STYLE_YMD_HMS;



   runtime_str[0] = '\0';
   last_played_str[0] = '\0';
   update_entry.runtime_str = runtime_str;
   update_entry.last_played_str = last_played_str;


   playlist_get_index(playlist, idx, &entry);


   runtime_log = runtime_log_init(entry->path, entry->core_path,
         (settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_PER_CORE));

   if (runtime_log)
   {

      if (runtime_log_has_runtime(runtime_log))
      {

         runtime_log_get_runtime_hms(runtime_log,
               &update_entry.runtime_hours, &update_entry.runtime_minutes, &update_entry.runtime_seconds);

         runtime_log_get_runtime_str(runtime_log, runtime_str, sizeof(runtime_str));


         runtime_log_get_last_played(runtime_log,
               &update_entry.last_played_year, &update_entry.last_played_month, &update_entry.last_played_day,
               &update_entry.last_played_hour, &update_entry.last_played_minute, &update_entry.last_played_second);

         runtime_log_get_last_played_str(runtime_log, last_played_str, sizeof(last_played_str), timedate_style);


         update_entry.runtime_status = PLAYLIST_RUNTIME_VALID;
      }


      free(runtime_log);
   }



   if (string_is_equal(settings->arrays.menu_driver, "ozone"))
   {
      if (update_entry.runtime_status != PLAYLIST_RUNTIME_VALID)
      {
         runtime_log_get_runtime_str(((void*)0), runtime_str, sizeof(runtime_str));
         runtime_log_get_last_played_str(((void*)0), last_played_str, sizeof(last_played_str), timedate_style);
      }
   }


   playlist_update_runtime(playlist, idx, &update_entry, 0);
}
