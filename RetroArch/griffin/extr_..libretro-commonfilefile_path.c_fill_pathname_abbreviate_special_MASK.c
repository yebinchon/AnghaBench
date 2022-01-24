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
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 char const* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 size_t FUNC8 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char const* FUNC10 (char const*,char const*) ; 

void FUNC11(char *out_path,
      const char *in_path, size_t size)
{
#if !defined(RARCH_CONSOLE) && defined(RARCH_INTERNAL)
   unsigned i;
   const char *candidates[3];
   const char *notations[3];
   char *application_dir     = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   char *home_dir            = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

   application_dir[0] = '\0';

   /* application_dir could be zero-string. Safeguard against this.
    *
    * Keep application dir in front of home, moving app dir to a
    * new location inside home would break otherwise. */

   /* ugly hack - use application_dir pointer
    * before filling it in. C89 reasons */
   candidates[0] = application_dir;
   candidates[1] = home_dir;
   candidates[2] = NULL;

   notations [0] = ":";
   notations [1] = "~";
   notations [2] = NULL;

   fill_pathname_application_dir(application_dir,
         PATH_MAX_LENGTH * sizeof(char));
   fill_pathname_home_dir(home_dir,
         PATH_MAX_LENGTH * sizeof(char));

   for (i = 0; candidates[i]; i++)
   {
      if (!string_is_empty(candidates[i]) &&
            strstr(in_path, candidates[i]) == in_path)
      {
         size_t src_size  = strlcpy(out_path, notations[i], size);

         retro_assert(src_size < size);

         out_path        += src_size;
         size            -= src_size;
         in_path         += strlen(candidates[i]);

         if (!path_char_is_slash(*in_path))
         {
            retro_assert(strlcpy(out_path,
                     path_default_slash(), size) < size);
            out_path++;
            size--;
         }

         break; /* Don't allow more abbrevs to take place. */
      }
   }

   free(application_dir);
   free(home_dir);
#endif

   FUNC6(FUNC8(out_path, in_path, size) < size);
}