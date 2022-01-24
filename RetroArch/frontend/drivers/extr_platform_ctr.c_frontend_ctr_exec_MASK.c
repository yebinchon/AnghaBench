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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  error_string ;
typedef  int /*<<< orphan*/  errorConf ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_LANGUAGE_EN ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  ERROR_TEXT ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* elf_path_cst ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char const* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC15 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 

__attribute__((used)) static void FUNC17(const char* path, bool should_load_game)
{
   char game_path[PATH_MAX];
   const char* arg_data[3];
   errorConf error_dialog;
   char error_string[200 + PATH_MAX];
   int args           = 0;
   int error          = 0;

   FUNC1(path);
   FUNC0(path);

   game_path[0]       = '\0';
   arg_data[0]        = NULL;

   arg_data[args]     = elf_path_cst;
   arg_data[args + 1] = NULL;
   args++;

   FUNC2("Attempt to load core: [%s].\n", path);
#ifndef IS_SALAMANDER
   if (should_load_game && !FUNC13(RARCH_PATH_CONTENT))
   {
      FUNC16(game_path, FUNC12(RARCH_PATH_CONTENT));
      arg_data[args] = game_path;
      arg_data[args + 1] = NULL;
      args++;
      FUNC2("content path: [%s].\n", FUNC12(RARCH_PATH_CONTENT));
   }
#endif

   if (path && path[0])
   {
#ifdef IS_SALAMANDER
      struct stat sbuff;
      bool file_exists = stat(path, &sbuff) == 0;

      if (!file_exists)
      {
         char core_path[PATH_MAX];

         core_path[0] = '\0';

         /* find first valid core and load it if the target core doesnt exist */
         get_first_valid_core(&core_path[0]);

         if (core_path[0] == '\0')
         {
            errorInit(&error_dialog, ERROR_TEXT, CFG_LANGUAGE_EN);
            errorText(&error_dialog, "There are no cores installed, install a core to continue.");
            errorDisp(&error_dialog);
            exit(0);
         }
      }
#endif

      if (FUNC4())
         FUNC8(path, arg_data);
      else
      {
         FUNC3("\n");
         FUNC3("\n");
         FUNC3("Warning:\n");
         FUNC3("First core launch may take 20\n");
         FUNC3("seconds! Do not force quit\n");
         FUNC3("before then or your memory\n");
         FUNC3("card may be corrupted!\n");
         FUNC3("\n");
         FUNC3("\n");
         FUNC9(path, arg_data);
      }

      FUNC6(&error_dialog, ERROR_TEXT, CFG_LANGUAGE_EN);
      FUNC14(error_string, sizeof(error_string),
            "Can't launch core:%s", path);
      FUNC7(&error_dialog, error_string);
      FUNC5(&error_dialog);
      FUNC10(0); /* couldnt launch new core, but context 
                  is corrupt so we have to quit */
   }
}