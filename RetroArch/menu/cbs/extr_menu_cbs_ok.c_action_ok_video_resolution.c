
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;


 int ACTION_OK_DL_DROPDOWN_BOX_LIST_RESOLUTION ;
 int CMD_EVENT_REINIT ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int PATH_MAX_LENGTH ;
 int generic_action_ok_command (int ) ;
 int generic_action_ok_displaylist_push (int *,int *,int *,int ,size_t,int ,int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ video_driver_get_video_output_size (unsigned int*,unsigned int*) ;
 int video_driver_set_video_mode (unsigned int,unsigned int,int) ;

__attribute__((used)) static int action_ok_video_resolution(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   generic_action_ok_displaylist_push(
         ((void*)0),
         ((void*)0), ((void*)0), 0, idx, 0,
         ACTION_OK_DL_DROPDOWN_BOX_LIST_RESOLUTION);


   return 0;
}
