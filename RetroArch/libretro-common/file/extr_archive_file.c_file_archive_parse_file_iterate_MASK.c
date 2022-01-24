#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct file_archive_file_backend {int (* archive_parse_file_iterate_step ) (TYPE_2__*,char const*,struct archive_extract_userdata*,int /*<<< orphan*/ ) ;} ;
struct archive_extract_userdata {int /*<<< orphan*/ * context; int /*<<< orphan*/  archive_path; } ;
struct TYPE_7__ {int type; int /*<<< orphan*/ * stream; TYPE_1__* backend; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_2__ file_archive_transfer_t ;
typedef  int /*<<< orphan*/  file_archive_file_cb ;
struct TYPE_6__ {int /*<<< orphan*/  (* stream_free ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
#define  ARCHIVE_TRANSFER_DEINIT 132 
#define  ARCHIVE_TRANSFER_DEINIT_ERROR 131 
#define  ARCHIVE_TRANSFER_INIT 130 
#define  ARCHIVE_TRANSFER_ITERATE 129 
#define  ARCHIVE_TRANSFER_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct file_archive_file_backend* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC5 (TYPE_2__*,char const*,struct archive_extract_userdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(
      file_archive_transfer_t *state,
      bool *returnerr,
      const char *file,
      const char *valid_exts,
      file_archive_file_cb file_cb,
      struct archive_extract_userdata *userdata)
{
   if (!state)
      return -1;

   switch (state->type)
   {
      case ARCHIVE_TRANSFER_NONE:
         break;
      case ARCHIVE_TRANSFER_INIT:
         if (FUNC2(state, file) == 0)
         {
            if (userdata)
            {
               userdata->context = state->stream;
               FUNC4(userdata->archive_path, file,
                     sizeof(userdata->archive_path));
            }
            state->type = ARCHIVE_TRANSFER_ITERATE;
         }
         else
            state->type = ARCHIVE_TRANSFER_DEINIT_ERROR;
         break;
      case ARCHIVE_TRANSFER_ITERATE:
         if (FUNC1(file))
         {
            const struct file_archive_file_backend *backend =
               FUNC1(file);
            int ret                                         =
               backend->archive_parse_file_iterate_step(state,
                  valid_exts, userdata, file_cb);

            if (ret != 1)
               state->type = ARCHIVE_TRANSFER_DEINIT;
            if (ret == -1)
               state->type = ARCHIVE_TRANSFER_DEINIT_ERROR;

            /* early return to prevent deinit from never firing */
            return 0;
         }
         return -1;
      case ARCHIVE_TRANSFER_DEINIT_ERROR:
         *returnerr = false;
      case ARCHIVE_TRANSFER_DEINIT:
         if (state->handle)
         {
            FUNC0(state->handle);
            state->handle = NULL;
         }

         if (state->stream && state->backend)
         {
            if (state->backend->stream_free)
               state->backend->stream_free(state->stream);

            if (state->stream)
               FUNC3(state->stream);

            state->stream = NULL;

            if (userdata)
               userdata->context = NULL;
         }
         break;
   }

   if (  state->type == ARCHIVE_TRANSFER_DEINIT ||
         state->type == ARCHIVE_TRANSFER_DEINIT_ERROR)
      return -1;

   return 0;
}