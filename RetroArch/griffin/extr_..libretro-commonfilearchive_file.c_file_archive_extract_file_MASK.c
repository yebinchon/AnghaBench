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
struct string_list {int dummy; } ;
struct TYPE_2__ {int found; scalar_t__ size; int /*<<< orphan*/ * needle; int /*<<< orphan*/ * opt_file; } ;
struct archive_extract_userdata {char* archive_path; char const* extraction_directory; size_t archive_path_size; int found_file; int list_only; char* archive_name; int /*<<< orphan*/ * first_extracted_file_path; TYPE_1__ decomp_state; int /*<<< orphan*/ * dec; scalar_t__ crc; int /*<<< orphan*/ * context; int /*<<< orphan*/ * list; struct string_list* ext; int /*<<< orphan*/ * extracted_file_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  file_archive_extract_cb ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,struct archive_extract_userdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,size_t) ; 

bool FUNC6(
      char *archive_path,
      size_t archive_path_size,
      const char *valid_exts,
      const char *extraction_directory,
      char *out_path, size_t len)
{
   struct archive_extract_userdata userdata;
   bool ret                                 = true;
   struct string_list *list                 = FUNC4(valid_exts, "|");

   userdata.archive_path[0]                 = '\0';
   userdata.first_extracted_file_path       = NULL;
   userdata.extracted_file_path             = NULL;
   userdata.extraction_directory            = extraction_directory;
   userdata.archive_path_size               = archive_path_size;
   userdata.ext                             = list;
   userdata.list                            = NULL;
   userdata.found_file                      = false;
   userdata.list_only                       = false;
   userdata.context                         = NULL;
   userdata.archive_name[0]                 = '\0';
   userdata.crc                             = 0;
   userdata.dec                             = NULL;

   userdata.decomp_state.opt_file           = NULL;
   userdata.decomp_state.needle             = NULL;
   userdata.decomp_state.size               = 0;
   userdata.decomp_state.found              = false;

   if (!list)
   {
      ret = false;
      goto end;
   }

   if (!FUNC0(archive_path, valid_exts,
            file_archive_extract_cb, &userdata))
   {
      /* Parsing file archive failed. */
      ret = false;
      goto end;
   }

   if (!userdata.found_file)
   {
      /* Didn't find any file that matched valid extensions
       * for libretro implementation. */
      ret = false;
      goto end;
   }

   if (!FUNC2(userdata.first_extracted_file_path))
      FUNC5(out_path, userdata.first_extracted_file_path, len);

end:
   if (userdata.first_extracted_file_path)
      FUNC1(userdata.first_extracted_file_path);
   if (list)
      FUNC3(list);
   return ret;
}