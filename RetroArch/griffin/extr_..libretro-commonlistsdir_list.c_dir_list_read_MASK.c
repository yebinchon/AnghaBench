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
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
struct string_list {int dummy; } ;
struct RDIR {int dummy; } ;
typedef  int /*<<< orphan*/  file_path ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_COMPRESSED_ARCHIVE ; 
 int /*<<< orphan*/  RARCH_DIRECTORY ; 
 int /*<<< orphan*/  RARCH_FILETYPE_UNSET ; 
 int /*<<< orphan*/  RARCH_PLAIN_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,int) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct RDIR*) ; 
 scalar_t__ FUNC4 (struct RDIR*) ; 
 char* FUNC5 (struct RDIR*) ; 
 scalar_t__ FUNC6 (struct RDIR*,int /*<<< orphan*/ *) ; 
 struct RDIR* FUNC7 (char const*,int) ; 
 scalar_t__ FUNC8 (struct RDIR*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,char*,union string_list_elem_attr) ; 
 scalar_t__ FUNC11 (struct string_list*,char*,char const*) ; 

__attribute__((used)) static int FUNC12(const char *dir,
      struct string_list *list, struct string_list *ext_list,
      bool include_dirs, bool include_hidden,
      bool include_compressed, bool recursive)
{
   struct RDIR *entry = FUNC7(dir, include_hidden);

   if (!entry || FUNC4(entry))
      goto error;

   while (FUNC8(entry))
   {
      union string_list_elem_attr attr;
      char file_path[PATH_MAX_LENGTH];
      const char *name                = FUNC5(entry);

      if (!include_hidden && *name == '.')
         continue;
      if (!FUNC9(name, ".") || !FUNC9(name, ".."))
         continue;

      file_path[0] = '\0';
      FUNC0(file_path, dir, name, sizeof(file_path));

      if (FUNC6(entry, NULL))
      {
         if (recursive)
            FUNC12(file_path, list, ext_list, include_dirs,
                  include_hidden, include_compressed, recursive);

         if (!include_dirs)
            continue;
         attr.i = RARCH_DIRECTORY;
      }
      else
      {
         const char *file_ext    = FUNC1(name);

         attr.i                  = RARCH_FILETYPE_UNSET;

         /*
          * If the file format is explicitly supported by the libretro-core, we
          * need to immediately load it and not designate it as a compressed file.
          *
          * Example: .zip could be supported as a image by the core and as a
          * compressed_file. In that case, we have to interpret it as a image.
          *
          * */
         if (FUNC11(ext_list, ".", file_ext))
            attr.i            = RARCH_PLAIN_FILE;
         else
         {
            bool is_compressed_file;
            if ((is_compressed_file = FUNC2(file_path)))
               attr.i               = RARCH_COMPRESSED_ARCHIVE;

            if (ext_list &&
                  (!is_compressed_file || !include_compressed))
               continue;
         }
      }

      if (!FUNC10(list, file_path, attr))
         goto error;
   }

   FUNC3(entry);

   return 0;

error:
   if (entry)
      FUNC3(entry);
   return -1;
}