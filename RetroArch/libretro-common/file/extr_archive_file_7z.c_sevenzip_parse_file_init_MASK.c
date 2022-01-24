#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {int /*<<< orphan*/  s; int /*<<< orphan*/ * realStream; } ;
struct TYPE_8__ {int /*<<< orphan*/  s; int /*<<< orphan*/  file; } ;
struct sevenzip_context_t {int /*<<< orphan*/  allocTempImp; int /*<<< orphan*/  allocImp; TYPE_3__ lookStream; int /*<<< orphan*/  db; TYPE_5__ archiveStream; } ;
struct TYPE_6__ {scalar_t__ archive_size; struct sevenzip_context_t* stream; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ file_archive_transfer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  SEVENZIP_MAGIC ; 
 scalar_t__ SEVENZIP_MAGIC_LEN ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sevenzip_context_t*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (char const*) ; 

__attribute__((used)) static int FUNC14(file_archive_transfer_t *state,
      const char *file)
{
   struct sevenzip_context_t *sevenzip_context =
         (struct sevenzip_context_t*)FUNC10();

   if (state->archive_size < SEVENZIP_MAGIC_LEN)
      goto error;

   if (FUNC12(state->data, SEVENZIP_MAGIC, SEVENZIP_MAGIC_LEN))
      goto error;

   state->stream = sevenzip_context;

#if defined(_WIN32) && defined(USE_WINDOWS_FILE) && !defined(LEGACY_WIN32)
   if (!string_is_empty(file))
   {
      wchar_t *fileW = utf8_to_utf16_string_alloc(file);

      if (fileW)
      {
         /* could not open 7zip archive? */
         if (InFile_OpenW(&sevenzip_context->archiveStream.file, fileW))
         {
            free(fileW);
            goto error;
         }

         free(fileW);
      }
   }
#else
   /* could not open 7zip archive? */
   if (FUNC2(&sevenzip_context->archiveStream.file, file))
      goto error;
#endif

   FUNC1(&sevenzip_context->archiveStream);
   FUNC4(&sevenzip_context->lookStream, false);
   sevenzip_context->lookStream.realStream = &sevenzip_context->archiveStream.s;
   FUNC5(&sevenzip_context->lookStream);
   FUNC0();
   FUNC6(&sevenzip_context->db);

   if (FUNC7(&sevenzip_context->db, &sevenzip_context->lookStream.s,
         &sevenzip_context->allocImp, &sevenzip_context->allocTempImp) != SZ_OK)
      goto error;

   return 0;

error:
   if (sevenzip_context)
      FUNC9(sevenzip_context);
   return -1;
}