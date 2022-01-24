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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

void FUNC7(char* out_rep,
      const char *in_path, size_t size)
{
#ifdef HAVE_COMPRESSION
   char *path_short = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   char *last_slash = NULL;

   path_short[0]    = '\0';

   fill_pathname(path_short, path_basename(in_path), "",
         PATH_MAX_LENGTH * sizeof(char)
         );

   last_slash  = find_last_slash(path_short);

   if (last_slash != NULL)
   {
      /* We handle paths like:
       * /path/to/file.7z#mygame.img
       * short_name: mygame.img:
       *
       * We check whether something is actually
       * after the hash to avoid going over the buffer.
       */
      strlcpy(out_rep, last_slash + 1, size);
      free(path_short);
      return;
   }

   free(path_short);
#endif

   FUNC1(out_rep, in_path, size);
}