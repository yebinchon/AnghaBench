#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ state_slot; } ;
struct TYPE_7__ {int /*<<< orphan*/  rewind_granularity; } ;
struct TYPE_9__ {TYPE_2__ ints; TYPE_1__ uints; } ;
typedef  TYPE_3__ settings_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_10__ {char* movie_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_FAILED_TO_START_MOVIE_RECORD ; 
 int /*<<< orphan*/  MSG_STARTING_MOVIE_RECORD_TO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  RARCH_MOVIE_RECORD ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_6__ bsv_movie_state ; 
 int /*<<< orphan*/  bsv_movie_state_handle ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* configuration_settings ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC9(void)
{
   char msg[16384], path[8192];
   settings_t *settings       = configuration_settings;

   msg[0] = path[0]           = '\0';

   FUNC3(settings, settings->uints.rewind_granularity, 1);

   if (settings->ints.state_slot > 0)
      FUNC6(path, sizeof(path), "%s%d.bsv",
            bsv_movie_state.movie_path,
            settings->ints.state_slot);
   else
   {
      FUNC8(path, bsv_movie_state.movie_path, sizeof(path));
      FUNC7(path, ".bsv", sizeof(path));
   }


   FUNC6(msg, sizeof(msg), "%s \"%s\".",
         FUNC4(MSG_STARTING_MOVIE_RECORD_TO),
         path);

   FUNC2(path, RARCH_MOVIE_RECORD);

   if (!bsv_movie_state_handle)
   {
      FUNC5(
            FUNC4(MSG_FAILED_TO_START_MOVIE_RECORD),
            2, 180, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      FUNC0("%s\n",
            FUNC4(MSG_FAILED_TO_START_MOVIE_RECORD));
      return false;
   }

   FUNC5(msg, 2, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   FUNC1("%s \"%s\".\n",
         FUNC4(MSG_STARTING_MOVIE_RECORD_TO),
         path);

   return true;
}