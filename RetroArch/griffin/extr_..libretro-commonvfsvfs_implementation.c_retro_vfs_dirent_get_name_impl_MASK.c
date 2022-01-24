#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* entry; } ;
typedef  TYPE_3__ libretro_vfs_implementation_dir ;
struct TYPE_6__ {char const* d_name; } ;
struct TYPE_5__ {char* cFileName; char const* d_name; char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*) ; 

const char *FUNC5(libretro_vfs_implementation_dir *rdir)
{
#if defined(_WIN32)
#if defined(LEGACY_WIN32)
   {
      char *name_local = local_to_utf8_string_alloc(rdir->entry.cFileName);
      memset(rdir->entry.cFileName, 0, sizeof(rdir->entry.cFileName));
      strlcpy(rdir->entry.cFileName, name_local, sizeof(rdir->entry.cFileName));

      if (name_local)
         free(name_local);
   }
#else
   {
      char *name       = utf16_to_utf8_string_alloc(rdir->entry.cFileName);
      memset(rdir->entry.cFileName, 0, sizeof(rdir->entry.cFileName));
      strlcpy((char*)rdir->entry.cFileName, name, sizeof(rdir->entry.cFileName));

      if (name)
         free(name);
   }
#endif
   return (char*)rdir->entry.cFileName;
#elif defined(VITA) || defined(PSP) || defined(__CELLOS_LV2__) || defined(ORBIS)
   return rdir->entry.d_name;
#elif defined(PS2)
   return rdir->entry.name;
#else
   if (!rdir || !rdir->entry)
      return NULL;
   return rdir->entry->d_name;
#endif
}