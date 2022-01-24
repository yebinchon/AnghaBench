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
 int /*<<< orphan*/ * playlist_cached ; 
 int /*<<< orphan*/ * FUNC0 (char const*,size_t) ; 

bool FUNC1(const char *path, size_t size)
{
   playlist_t *playlist = FUNC0(path, size);
   if (!playlist)
      return false;

   playlist_cached      = playlist;
   return true;
}