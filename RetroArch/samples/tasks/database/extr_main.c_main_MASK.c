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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ loop_active ; 
 int /*<<< orphan*/  main_db_cb ; 
 int /*<<< orphan*/  main_msg_queue_push ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(int argc, char *argv[])
{
   const char *db_dir        = NULL;
   const char *core_info_dir = NULL;
   const char *core_dir      = NULL;
   const char *input_dir     = NULL;
   const char *playlist_dir  = NULL;
#if defined(_WIN32)
   const char *exts          = "dll";
#elif defined(__MACH__)
   const char *exts          = "dylib";
#else
   const char *exts          = "so";
#endif

   if (argc < 6)
   {
      FUNC2(stderr, "Usage: %s <database dir> <core dir> <core info dir> <input dir> <playlist dir>\n", argv[0]);
      return 1;
   }

   db_dir        = argv[1];
   core_dir      = argv[2];
   core_info_dir = argv[3];
   input_dir     = argv[4];
   playlist_dir  = argv[5];

   FUNC2(stderr, "RDB database dir: %s\n", db_dir);
   FUNC2(stderr, "Core         dir: %s\n", core_dir);
   FUNC2(stderr, "Core info    dir: %s\n", core_info_dir);
   FUNC2(stderr, "Input        dir: %s\n", input_dir);
   FUNC2(stderr, "Playlist     dir: %s\n", playlist_dir);
#ifdef HAVE_THREADS
   task_queue_init(true /* threaded enable */, main_msg_queue_push);
#else
   FUNC6(false /* threaded enable */, main_msg_queue_push);
#endif
   FUNC1(core_info_dir, core_dir, exts, true);

   FUNC3(playlist_dir, db_dir, input_dir, true,
         true, main_db_cb);

   while (loop_active)
      FUNC4();

   FUNC2(stderr, "Exit loop\n");

   FUNC0();
   FUNC5();

   return 0;
}