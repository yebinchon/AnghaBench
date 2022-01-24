#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct archive_extract_userdata {scalar_t__ crc; int /*<<< orphan*/  extracted_file_path; TYPE_1__ member_0; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/ * backend; int /*<<< orphan*/ * data; int /*<<< orphan*/ * directory; int /*<<< orphan*/ * footer; int /*<<< orphan*/ * stream; int /*<<< orphan*/ * handle; scalar_t__ archive_size; } ;
typedef  TYPE_2__ file_archive_transfer_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_TRANSFER_INIT ; 
 scalar_t__ ARCHIVE_TRANSFER_ITERATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct archive_extract_userdata*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 

uint32_t FUNC5(const char *path)
{
   file_archive_transfer_t state;
   struct archive_extract_userdata userdata        = {0};
   bool returnerr                                  = false;
   const char *archive_path                        = NULL;
   bool contains_compressed = FUNC2(path);

   if (contains_compressed)
   {
      archive_path = FUNC3(path);

      /* move pointer right after the delimiter to give us the path */
      if (archive_path)
         archive_path += 1;
   }

   state.type          = ARCHIVE_TRANSFER_INIT;
   state.archive_size  = 0;
   state.handle        = NULL;
   state.stream        = NULL;
   state.footer        = NULL;
   state.directory     = NULL;
   state.data          = NULL;
   state.backend       = NULL;

   /* Initialize and open archive first.
      Sets next state type to ITERATE. */
   FUNC0(&state,
            &returnerr, path, NULL, NULL,
            &userdata);

   for (;;)
   {
      /* Now find the first file in the archive. */
      if (state.type == ARCHIVE_TRANSFER_ITERATE)
         FUNC0(&state,
                  &returnerr, path, NULL, NULL,
                  &userdata);

      /* If no path specified within archive, stop after
       * finding the first file.
       */
      if (!contains_compressed)
         break;

      /* Stop when the right file in the archive is found. */
      if (archive_path)
      {
         if (FUNC4(userdata.extracted_file_path, archive_path))
            break;
      }
      else
         break;
   }

   FUNC1(&state);

   if (userdata.crc)
      return userdata.crc;

   return 0;
}