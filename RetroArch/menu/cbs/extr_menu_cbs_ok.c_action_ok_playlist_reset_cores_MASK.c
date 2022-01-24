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
typedef  int /*<<< orphan*/  playlist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   playlist_t *playlist      = FUNC0();
   const char *playlist_path = NULL;

   if (!playlist)
      return -1;

   playlist_path = FUNC1(playlist);

   if (FUNC2(playlist_path))
      return -1;

   FUNC3(playlist_path);

   return 0;
}