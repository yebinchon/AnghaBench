#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {int dummy; } ;
struct TYPE_5__ {int modified; size_t cap; void* left_thumbnail_mode; void* right_thumbnail_mode; int /*<<< orphan*/  label_display_mode; struct playlist_entry* entries; int /*<<< orphan*/ * default_core_path; int /*<<< orphan*/ * default_core_name; int /*<<< orphan*/  conf_path; scalar_t__ size; } ;
typedef  TYPE_1__ playlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  LABEL_DISPLAY_MODE_DEFAULT ; 
 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

playlist_t *FUNC5(const char *path, size_t size)
{
   struct playlist_entry *entries = NULL;
   playlist_t           *playlist = (playlist_t*)FUNC2(sizeof(*playlist));
   if (!playlist)
      return NULL;

   entries = (struct playlist_entry*)FUNC0(size, sizeof(*entries));
   if (!entries)
   {
      FUNC1(playlist);
      return NULL;
   }

   playlist->modified             = false;
   playlist->size                 = 0;
   playlist->cap                  = size;
   playlist->conf_path            = FUNC4(path);
   playlist->default_core_name    = NULL;
   playlist->default_core_path    = NULL;
   playlist->entries              = entries;
   playlist->label_display_mode   = LABEL_DISPLAY_MODE_DEFAULT;
   playlist->right_thumbnail_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   playlist->left_thumbnail_mode  = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   FUNC3(playlist, path);

   return playlist;
}