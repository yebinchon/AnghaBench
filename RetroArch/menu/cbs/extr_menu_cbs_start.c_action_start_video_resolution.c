
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int msg ;
struct TYPE_7__ {scalar_t__ id; } ;
struct TYPE_8__ {TYPE_1__ current; } ;
struct TYPE_9__ {TYPE_2__ resolutions; } ;
struct TYPE_10__ {TYPE_3__ screen; } ;
struct TYPE_11__ {TYPE_4__ console; } ;
typedef TYPE_5__ global_t ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int PATH_MAX_LENGTH ;
 TYPE_5__* global_get_ptr () ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ video_driver_get_video_output_size (unsigned int*,unsigned int*) ;
 int video_driver_set_video_mode (unsigned int,unsigned int,int) ;

__attribute__((used)) static int action_start_video_resolution(unsigned type, const char *label)
{
   unsigned width = 0, height = 0;
   global_t *global = global_get_ptr();


   global->console.screen.resolutions.current.id = 0;

   if (video_driver_get_video_output_size(&width, &height))
   {
      char msg[PATH_MAX_LENGTH];

      msg[0] = '\0';

      video_driver_set_video_mode(width, height, 1);

      strlcpy(msg, "Resetting to: DEFAULT", sizeof(msg));
      runloop_msg_queue_push(msg, 1, 100, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }

   return 0;
}
