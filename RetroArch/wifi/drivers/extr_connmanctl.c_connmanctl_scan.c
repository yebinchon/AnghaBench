
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
struct TYPE_4__ {int localap_enable; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
typedef int FILE ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_LOCALAP_SWITCHING_OFF ;
 int MSG_WIFI_SCAN_COMPLETE ;
 int RARCH_FILETYPE_UNSET ;
 TYPE_2__* config_get_ptr () ;
 scalar_t__ connmanctl_tether_status () ;
 int connmanctl_tether_toggle (int,char*,char*) ;
 int * fgets (char*,int,int *) ;
 int free (scalar_t__) ;
 scalar_t__ lines ;
 int msg_hash_to_str (int ) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int string_list_append (scalar_t__,char*,union string_list_elem_attr) ;
 scalar_t__ string_list_new () ;
 size_t strlen (char*) ;

__attribute__((used)) static void connmanctl_scan(void)
{
   char line[512];
   union string_list_elem_attr attr;
   FILE *serv_file = ((void*)0);
   settings_t *settings = config_get_ptr();

   attr.i = RARCH_FILETYPE_UNSET;
   if (lines)
      free(lines);
   lines = string_list_new();

   if (connmanctl_tether_status())
   {
      runloop_msg_queue_push(msg_hash_to_str(MSG_LOCALAP_SWITCHING_OFF),
            1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT,
            MESSAGE_QUEUE_CATEGORY_INFO);
      settings->bools.localap_enable = 0;
      connmanctl_tether_toggle(0, "", "");
   }

   pclose(popen("connmanctl enable wifi", "r"));

   pclose(popen("connmanctl scan wifi", "r"));

   runloop_msg_queue_push(msg_hash_to_str(MSG_WIFI_SCAN_COMPLETE),
         1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT,
         MESSAGE_QUEUE_CATEGORY_INFO);

   serv_file = popen("connmanctl services", "r");
   while (fgets (line, 512, serv_file) != ((void*)0))
   {
      size_t len = strlen(line);
      if (len > 0 && line[len-1] == '\n')
         line[--len] = '\0';

      string_list_append(lines, line, attr);
   }
   pclose(serv_file);
}
