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
struct playlist_entry {char* path; } ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  PLAYLIST_LOAD ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,struct playlist_entry const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 char FUNC10 (unsigned char) ; 

__attribute__((used)) static bool FUNC11(playlist_t *playlist, size_t idx)
{
   char path[PATH_MAX_LENGTH];
   const struct playlist_entry *entry = NULL;

   FUNC3(playlist, idx, &entry);

   path[0] = '\0';
   FUNC7(path, entry->path, sizeof(path));
   FUNC4(PLAYLIST_LOAD, path, sizeof(path));

   if (!FUNC6(path))
   {
      unsigned i;
      bool valid_path     = false;
      char *path_check    = NULL;
      char *path_tolower  = FUNC5(path);

      for (i = 0; i < FUNC8(path_tolower); ++i)
         path_tolower[i] = FUNC10((unsigned char)path_tolower[i]);

      if (FUNC9(path_tolower, ".zip"))
         FUNC9(path_tolower, ".zip")[4] = '\0';
      else if (FUNC9(path_tolower, ".7z"))
         FUNC9(path_tolower, ".7z")[3] = '\0';

      path_check = (char *)
         FUNC0(FUNC8(path_tolower) + 1, sizeof(char));

      FUNC7(path_check, path, FUNC8(path_tolower) + 1);

      valid_path = FUNC2(path_check);

      FUNC1(path_tolower);
      FUNC1(path_check);

      if (valid_path)
         return true;
   }

   return false;
}