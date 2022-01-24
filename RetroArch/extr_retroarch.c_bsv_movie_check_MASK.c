#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int movie_playback; int movie_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_MOVIE_PLAYBACK_ENDED ; 
 int /*<<< orphan*/  MSG_MOVIE_RECORD_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ bsv_movie_state ; 
 int /*<<< orphan*/  bsv_movie_state_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(void)
{
   if (!bsv_movie_state_handle)
      return FUNC3();

   if (bsv_movie_state.movie_playback)
   {
      /* Checks if movie is being played back. */
      if (!bsv_movie_state.movie_end)
         return false;
      FUNC4(
            FUNC2(MSG_MOVIE_PLAYBACK_ENDED), 2, 180, false,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      FUNC0("%s\n", FUNC2(MSG_MOVIE_PLAYBACK_ENDED));

      FUNC1();

      bsv_movie_state.movie_end      = false;
      bsv_movie_state.movie_playback = false;

      return true;
   }

   /* Checks if movie is being recorded. */
   if (!bsv_movie_state_handle)
      return false;

   FUNC4(
         FUNC2(MSG_MOVIE_RECORD_STOPPED), 2, 180, true,
         NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   FUNC0("%s\n", FUNC2(MSG_MOVIE_RECORD_STOPPED));

   FUNC1();

   return true;
}