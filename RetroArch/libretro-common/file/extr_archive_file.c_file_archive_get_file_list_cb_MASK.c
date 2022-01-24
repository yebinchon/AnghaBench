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
union string_list_elem_attr {scalar_t__ i; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct string_list {int dummy; } ;
struct archive_extract_userdata {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ RARCH_COMPRESSED_FILE_IN_ARCHIVE ; 
 char* FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 (char const*,char*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
      const char *path,
      const char *valid_exts,
      const uint8_t *cdata,
      unsigned cmode,
      uint32_t csize,
      uint32_t size,
      uint32_t checksum,
      struct archive_extract_userdata *userdata)
{
   union string_list_elem_attr attr;
   attr.i = 0;

   if (valid_exts)
   {
      size_t path_len              = FUNC5(path);
      /* Checks if this entry is a directory or a file. */
      char last_char               = path[path_len - 1];
      struct string_list *ext_list = NULL;

      /* Skip if directory. */
      if (last_char == '/' || last_char == '\\' )
      {
         FUNC3(ext_list);
         return 0;
      }
      
      ext_list                = FUNC4(valid_exts, "|");

      if (ext_list)
      {
         const char *file_ext = FUNC0(path);

         if (!file_ext)
         {
            FUNC3(ext_list);
            return 0;
         }

         if (!FUNC2(ext_list, ".", file_ext))
         {
            /* keep iterating */
            FUNC3(ext_list);
            return -1;
         }

         attr.i = RARCH_COMPRESSED_FILE_IN_ARCHIVE;
         FUNC3(ext_list);
      }
   }

   return FUNC1(userdata->list, path, attr);
}