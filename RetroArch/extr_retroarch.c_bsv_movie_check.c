
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int movie_playback; int movie_end; } ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_MOVIE_PLAYBACK_ENDED ;
 int MSG_MOVIE_RECORD_STOPPED ;
 int RARCH_LOG (char*,int ) ;
 int bsv_movie_deinit () ;
 TYPE_1__ bsv_movie_state ;
 int bsv_movie_state_handle ;
 int msg_hash_to_str (int ) ;
 int runloop_check_movie_init () ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;

__attribute__((used)) static bool bsv_movie_check(void)
{
   if (!bsv_movie_state_handle)
      return runloop_check_movie_init();

   if (bsv_movie_state.movie_playback)
   {

      if (!bsv_movie_state.movie_end)
         return 0;
      runloop_msg_queue_push(
            msg_hash_to_str(MSG_MOVIE_PLAYBACK_ENDED), 2, 180, 0,
            ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      RARCH_LOG("%s\n", msg_hash_to_str(MSG_MOVIE_PLAYBACK_ENDED));

      bsv_movie_deinit();

      bsv_movie_state.movie_end = 0;
      bsv_movie_state.movie_playback = 0;

      return 1;
   }


   if (!bsv_movie_state_handle)
      return 0;

   runloop_msg_queue_push(
         msg_hash_to_str(MSG_MOVIE_RECORD_STOPPED), 2, 180, 1,
         ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   RARCH_LOG("%s\n", msg_hash_to_str(MSG_MOVIE_RECORD_STOPPED));

   bsv_movie_deinit();

   return 1;
}
