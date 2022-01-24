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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  path_buf ;
struct TYPE_7__ {int /*<<< orphan*/ * directory; int /*<<< orphan*/ * entry; int /*<<< orphan*/  error; int /*<<< orphan*/  orig_path; } ;
typedef  TYPE_2__ libretro_vfs_implementation_dir ;
struct TYPE_6__ {int /*<<< orphan*/  dwFileAttributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_ATTRIBUTE_HIDDEN ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 size_t FUNC13 (char*,char const*,int) ; 
 unsigned int FUNC14 (char const*) ; 
 char* FUNC15 (char*) ; 
 char* FUNC16 (char*) ; 

libretro_vfs_implementation_dir *FUNC17(
      const char *name, bool include_hidden)
{
#if defined(_WIN32)
   unsigned path_len;
   char path_buf[1024];
   size_t copied      = 0;
#if defined(LEGACY_WIN32)
   char *path_local   = NULL;
#else
   wchar_t *path_wide = NULL;
#endif
#endif
   libretro_vfs_implementation_dir *rdir;

   /*Reject null or empty string paths*/
   if (!name || (*name == 0))
      return NULL;

   /*Allocate RDIR struct. Tidied later with retro_closedir*/
   rdir = (libretro_vfs_implementation_dir*)FUNC2(1, sizeof(*rdir));
   if (!rdir)
      return NULL;

   rdir->orig_path       = FUNC11(name);

#if defined(_WIN32)
   path_buf[0]           = '\0';
   path_len              = strlen(name);

   copied                = strlcpy(path_buf, name, sizeof(path_buf));

   /* Non-NT platforms don't like extra slashes in the path */
   if (name[path_len - 1] != '\\')
      path_buf[copied++]   = '\\';

   path_buf[copied]        = '*';
   path_buf[copied+1]      = '\0';

#if defined(LEGACY_WIN32)
   path_local              = utf8_to_local_string_alloc(path_buf);
   rdir->directory         = FindFirstFile(path_local, &rdir->entry);

   if (path_local)
      free(path_local);
#else
   path_wide               = utf8_to_utf16_string_alloc(path_buf);
   rdir->directory         = FindFirstFileW(path_wide, &rdir->entry);

   if (path_wide)
      free(path_wide);
#endif

#elif defined(VITA) || defined(PSP)
   rdir->directory       = sceIoDopen(name);
#elif defined(PS2)
   rdir->directory       = ps2fileXioDopen(name);
#elif defined(_3DS)
   rdir->directory       = !string_is_empty(name) ? opendir(name) : NULL;
   rdir->entry           = NULL;
#elif defined(__CELLOS_LV2__)
   rdir->error           = cellFsOpendir(name, &rdir->directory);
#elif defined(ORBIS)
   rdir->directory       = orbisDopen(name);
#else
   rdir->directory       = FUNC6(name);
   rdir->entry           = NULL;
#endif

#ifdef _WIN32
   if (include_hidden)
      rdir->entry.dwFileAttributes |= FILE_ATTRIBUTE_HIDDEN;
   else
      rdir->entry.dwFileAttributes &= ~FILE_ATTRIBUTE_HIDDEN;
#endif

   if (rdir->directory && !FUNC4(rdir))
      return rdir;

   FUNC9(rdir);
   return NULL;
}