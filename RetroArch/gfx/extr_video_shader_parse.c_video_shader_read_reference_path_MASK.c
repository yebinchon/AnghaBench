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
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

char *FUNC14(const char *path)
{
   /* We want shader presets that point to other presets.
    *
    * While config_file_new_from_path_to_string() does support the
    * #include directive, it will not rebase relative paths on
    * the include path.
    *
    * There's a plethora of reasons why a general solution is hard:
    *  - it's impossible to distinguish a generic string from a (relative) path
    *  - config_file_new_from_path_to_string() doesn't return the include path,
    *    so we cannot rebase afterwards
    *  - #include is recursive, so we'd actually need to track the include path
    *    for every setting
    *
    * So instead, we use a custom #reference directive, which is just a
    * one-time/non-recursive redirection, e.g.
    *
    * #reference "<path to config>"
    * or
    * #reference <path to config>
    *
    * which we will load as config_file_new_from_path_to_string(<path to config>).
    */
   char *reference     = NULL;
   RFILE *file         = NULL;
   char *line          = NULL;

   if (FUNC10(path))
     goto end;
   if (!FUNC9(path))
     goto end;

   file = FUNC3(path, RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
     goto end;

   line = FUNC2(file);
   FUNC1(file);

   if (line && !FUNC13("#reference", line, FUNC0("#reference")))
   {
      char *ref_path = line + FUNC0("#reference");

      /* have at least 1 whitespace */
      if (!FUNC6(*ref_path))
         goto end;
      ref_path++;

      while (FUNC6(*ref_path))
         ref_path++;

      if (*ref_path == '\"')
      {
         /* remove "" */
         char *p;
         ref_path++;

         p = ref_path;
         while (*p != '\0' && *p != '\"')
            p++;

         if (*p == '\"')
         {
            *p = '\0';
         }
         else
         {
            /* if there's no second ", remove whitespace at the end */
            p--;
            while (FUNC6(*p))
               *p-- = '\0';
         }
      }
      else
      {
         /* remove whitespace at the end (e.g. carriage return) */
         char *end = ref_path + FUNC12(ref_path) - 1;
         while (FUNC6(*end))
            *end-- = '\0';
      }

      if (FUNC10(ref_path))
         goto end;

      reference = (char *)FUNC7(PATH_MAX_LENGTH);

      if (!reference)
         goto end;

      /* rebase relative reference path */
      if (!FUNC8(ref_path))
      {
         FUNC4(reference,
               path, ref_path, PATH_MAX_LENGTH);
      }
      else
         FUNC11(reference, ref_path, PATH_MAX_LENGTH);
   }

end:
   if (line)
      FUNC5(line);

   return reference;
}