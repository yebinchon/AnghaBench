#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  real_search_path ;
struct TYPE_3__ {size_t size; struct playlist_entry* entries; } ;
typedef  TYPE_1__ playlist_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

void FUNC4(playlist_t *playlist,
      const char *search_path,
      const struct playlist_entry **entry)
{
   size_t i;
   char real_search_path[PATH_MAX_LENGTH];

   real_search_path[0] = '\0';

   if (!playlist || !entry || FUNC2(search_path))
      return;

   /* Get 'real' search path */
   FUNC3(real_search_path, search_path, sizeof(real_search_path));
   FUNC0(real_search_path, sizeof(real_search_path), true);

   for (i = 0; i < playlist->size; i++)
   {
      if (!FUNC1(real_search_path, playlist->entries[i].path))
         continue;

      *entry = &playlist->entries[i];

      break;
   }
}