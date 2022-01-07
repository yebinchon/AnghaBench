
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* path_softfilter_plugin; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;


 int CMD_EVENT_REINIT ;
 int command_event (int ,int *) ;
 TYPE_2__* config_get_ptr () ;

__attribute__((used)) static int action_start_video_filter_file_load(unsigned type, const char *label)
{
   settings_t *settings = config_get_ptr();

   if (!settings)
      return -1;

   settings->paths.path_softfilter_plugin[0] = '\0';
   command_event(CMD_EVENT_REINIT, ((void*)0));
   return 0;
}
