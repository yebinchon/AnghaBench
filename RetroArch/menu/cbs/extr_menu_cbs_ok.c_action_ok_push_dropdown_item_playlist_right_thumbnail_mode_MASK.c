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
typedef  enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;

/* Variables and functions */
 int /*<<< orphan*/  PLAYLIST_THUMBNAIL_RIGHT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   playlist_t *playlist = FUNC1();

   if (!playlist)
      return -1;

   FUNC2(playlist, PLAYLIST_THUMBNAIL_RIGHT, (enum playlist_thumbnail_mode)idx);
   FUNC3(playlist);

   return FUNC0(NULL, NULL, 0, 0);
}