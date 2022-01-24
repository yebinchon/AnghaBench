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
typedef  int /*<<< orphan*/  log ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_FAILED_SAVING_CONFIG_TO ; 
 int /*<<< orphan*/  MSG_SAVED_NEW_CONFIG_TO ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC9(
      const char *config_path,
      char *s, size_t len)
{
   char log[PATH_MAX_LENGTH];
   bool path_exists = !FUNC6(config_path);
   const char *str  = path_exists ? config_path :
      FUNC4(RARCH_PATH_CONFIG);

   if (path_exists && FUNC2(config_path))
   {
      FUNC5(s, len, "%s \"%s\".",
            FUNC3(MSG_SAVED_NEW_CONFIG_TO),
            config_path);

      FUNC8(log, "[config] ", sizeof(log));
      FUNC7(log, s, sizeof(log));
      FUNC1("%s\n", log);
      return true;
   }

   if (!FUNC6(str))
   {
      FUNC5(s, len, "%s \"%s\".",
            FUNC3(MSG_FAILED_SAVING_CONFIG_TO),
            str);

      FUNC8(log, "[config] ", sizeof(log));
      FUNC7(log, s, sizeof(log));
      FUNC0("%s\n", log);
   }

   return false;
}