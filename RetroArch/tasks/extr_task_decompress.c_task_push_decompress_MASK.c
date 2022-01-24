#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct archive_extract_userdata {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * title; void* user_data; int /*<<< orphan*/  callback; int /*<<< orphan*/  handler; TYPE_3__* state; void* frontend_userdata; } ;
typedef  TYPE_2__ retro_task_t ;
typedef  int /*<<< orphan*/  retro_task_callback_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int /*<<< orphan*/ * target_file; int /*<<< orphan*/ * subdir; struct archive_extract_userdata* userdata; TYPE_1__ archive; int /*<<< orphan*/ * valid_ext; int /*<<< orphan*/ * target_dir; int /*<<< orphan*/ * source_file; } ;
typedef  TYPE_3__ decompress_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_TRANSFER_INIT ; 
 int /*<<< orphan*/  MSG_EXTRACTING ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  task_decompress_handler ; 
 int /*<<< orphan*/  task_decompress_handler_subdir ; 
 int /*<<< orphan*/  task_decompress_handler_target_file ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

bool FUNC14(
      const char *source_file,
      const char *target_dir,
      const char *target_file,
      const char *subdir,
      const char *valid_ext,
      retro_task_callback_t cb,
      void *user_data,
      void *frontend_userdata)
{
   char tmp[PATH_MAX_LENGTH];
   const char *ext            = NULL;
   decompress_state_t *s      = NULL;
   retro_task_t *t            = NULL;

   tmp[0] = '\0';

   if (FUNC10(target_dir) || FUNC10(source_file))
   {
      FUNC1(
            "[decompress] Empty or null source file or"
            " target directory arguments.\n");
      return false;
   }

   ext = FUNC6(source_file);

   /* ZIP or APK only */
   if (
         !FUNC7(source_file) ||
         (
             !FUNC11(ext, "zip")
          && !FUNC11(ext, "apk")
#ifdef HAVE_7ZIP
          && !string_is_equal_noncase(ext, "7z")
#endif
         )
      )
   {
      FUNC1(
            "[decompress] File '%s' does not exist"
            " or is not a compressed file.\n",
            source_file);
      return false;
   }

   if (!valid_ext || !valid_ext[0])
      valid_ext   = NULL;

   if (FUNC12(source_file))
   {
      FUNC0(
            "[decompress] File '%s' already being decompressed.\n",
            source_file);
      return false;
   }

   FUNC0("[decompress] File '%s.\n", source_file);

   s              = (decompress_state_t*)FUNC2(1, sizeof(*s));

   if (!s)
      return false;

   t                   = (retro_task_t*)FUNC2(1, sizeof(*t));

   if (!t)
   {
      FUNC3(s);
      return false;
   }

   s->source_file      = FUNC9(source_file);
   s->target_dir       = FUNC9(target_dir);

   s->valid_ext        = valid_ext ? FUNC9(valid_ext) : NULL;
   s->archive.type     = ARCHIVE_TRANSFER_INIT;
   s->userdata         = (struct archive_extract_userdata*)
      FUNC2(1, sizeof(*s->userdata));

   t->frontend_userdata= frontend_userdata;

   t->state            = s;
   t->handler          = task_decompress_handler;

   if (!FUNC10(subdir))
   {
      s->subdir        = FUNC9(subdir);
      t->handler       = task_decompress_handler_subdir;
   }
   else if (!FUNC10(target_file))
   {
      s->target_file   = FUNC9(target_file);
      t->handler       = task_decompress_handler_target_file;
   }

   t->callback         = cb;
   t->user_data        = user_data;

   FUNC8(tmp, sizeof(tmp), "%s '%s'",
         FUNC4(MSG_EXTRACTING),
         FUNC5(source_file));

   t->title            = FUNC9(tmp);

   FUNC13(t);

   return true;
}