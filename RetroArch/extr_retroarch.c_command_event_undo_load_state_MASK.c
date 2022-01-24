#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  MSG_FAILED_TO_UNDO_LOAD_STATE ; 
 int /*<<< orphan*/  MSG_NO_STATE_HAS_BEEN_LOADED_YET ; 
 int /*<<< orphan*/  MSG_UNDID_LOAD_STATE ; 
 int /*<<< orphan*/  RARCH_NETPLAY_CTL_LOAD_SAVESTATE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC6(char *s, size_t len)
{

   if (FUNC0())
   {
      FUNC5(s,
         FUNC2(MSG_NO_STATE_HAS_BEEN_LOADED_YET),
         len);
      return;
   }

   if (!FUNC1())
   {
      FUNC4(s, len, "%s \"%s\".",
            FUNC2(MSG_FAILED_TO_UNDO_LOAD_STATE),
            "RAM");
      return;
   }

#ifdef HAVE_NETWORKING
   netplay_driver_ctl(RARCH_NETPLAY_CTL_LOAD_SAVESTATE, NULL);
#endif

   FUNC5(s,
         FUNC2(MSG_UNDID_LOAD_STATE), len);
}