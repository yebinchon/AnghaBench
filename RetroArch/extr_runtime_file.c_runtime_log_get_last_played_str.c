
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int settings_t ;
struct TYPE_5__ {int year; int month; int day; int hour; int minute; int second; } ;
struct TYPE_6__ {TYPE_1__ last_played; } ;
typedef TYPE_2__ runtime_log_t ;
typedef enum playlist_sublabel_last_played_style_type { ____Placeholder_playlist_sublabel_last_played_style_type } playlist_sublabel_last_played_style_type ;


 int MENU_ENUM_LABEL_VALUE_PLAYLIST_INLINE_CORE_DISPLAY_NEVER ;
 int MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED ;
 int * config_get_ptr () ;
 int last_played_strftime (TYPE_2__*,char*,int,char*) ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,char*,int,int,int,int,...) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;

void runtime_log_get_last_played_str(runtime_log_t *runtime_log,
      char *str, size_t len, enum playlist_sublabel_last_played_style_type timedate_style)
{
   settings_t *settings = config_get_ptr();
   int n = 0;
   char tmp[64];

   tmp[0] = '\0';

   if (!settings)
      return;

   if (runtime_log)
   {


      switch (timedate_style)
      {
         case 129:
            last_played_strftime(runtime_log, tmp, sizeof(tmp), " %Y/%m/%d - %I:%M:%S %p");
            strlcpy(str, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED), len);
            strlcat(str, tmp, len);
            return;
         case 128:
            last_played_strftime(runtime_log, tmp, sizeof(tmp), " %Y/%m/%d - %I:%M %p");
            strlcpy(str, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED), len);
            strlcat(str, tmp, len);
            return;
         case 134:
            last_played_strftime(runtime_log, tmp, sizeof(tmp), " %m/%d/%Y - %I:%M %p");
            strlcpy(str, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED), len);
            strlcat(str, tmp, len);
            return;
         case 136:
            last_played_strftime(runtime_log, tmp, sizeof(tmp), " %d/%m - %I:%M %p");
            strlcpy(str, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED), len);
            strlcat(str, tmp, len);
            return;
         case 132:
            last_played_strftime(runtime_log, tmp, sizeof(tmp), " %m/%d - %I:%M %p");
            strlcpy(str, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED), len);
            strlcat(str, tmp, len);
            return;
         default:
            break;
      }


      switch (timedate_style)
      {
         case 131:
            n = snprintf(str, len, "%s %04u/%02u/%02u - %02u:%02u",
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED),
                  runtime_log->last_played.year, runtime_log->last_played.month, runtime_log->last_played.day,
                  runtime_log->last_played.hour, runtime_log->last_played.minute);
            return;
         case 135:
            n = snprintf(str, len, "%s %02u/%02u/%04u - %02u:%02u",
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED),
                  runtime_log->last_played.month, runtime_log->last_played.day, runtime_log->last_played.year,
                  runtime_log->last_played.hour, runtime_log->last_played.minute);
            return;
         case 137:
            n = snprintf(str, len, "%s %02u/%02u - %02u:%02u",
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED),
                  runtime_log->last_played.day, runtime_log->last_played.month,
                  runtime_log->last_played.hour, runtime_log->last_played.minute);
            return;
         case 133:
            n = snprintf(str, len, "%s %02u/%02u - %02u:%02u",
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED),
                  runtime_log->last_played.month, runtime_log->last_played.day,
                  runtime_log->last_played.hour, runtime_log->last_played.minute);
            return;
         case 130:
         default:
            n = snprintf(str, len, "%s %04u/%02u/%02u - %02u:%02u:%02u",
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED),
                  runtime_log->last_played.year, runtime_log->last_played.month, runtime_log->last_played.day,
                  runtime_log->last_played.hour, runtime_log->last_played.minute, runtime_log->last_played.second);
            return;
      }
   }
   else
   {
      n = strlcpy(str, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED), len);
      str[n ] = ' ';
      str[n+1] = '\0';
      n = strlcat(str, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_INLINE_CORE_DISPLAY_NEVER), len);
   }

   if ((n < 0) || (n >= 64))
      n = 0;
}
