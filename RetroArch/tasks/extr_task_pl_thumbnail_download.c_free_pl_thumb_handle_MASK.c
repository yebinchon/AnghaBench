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
struct TYPE_5__ {struct TYPE_5__* thumbnail_path_data; int /*<<< orphan*/ * playlist; struct TYPE_5__* dir_thumbnails; struct TYPE_5__* playlist_path; struct TYPE_5__* system; } ;
typedef  TYPE_1__ pl_thumb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(pl_thumb_handle_t *pl_thumb, bool free_playlist)
{
   if (!pl_thumb)
      return;

   if (!FUNC2(pl_thumb->system))
   {
      FUNC0(pl_thumb->system);
      pl_thumb->system = NULL;
   }

   if (!FUNC2(pl_thumb->playlist_path))
   {
      FUNC0(pl_thumb->playlist_path);
      pl_thumb->playlist_path = NULL;
   }

   if (!FUNC2(pl_thumb->dir_thumbnails))
   {
      FUNC0(pl_thumb->dir_thumbnails);
      pl_thumb->dir_thumbnails = NULL;
   }

   if (pl_thumb->playlist && free_playlist)
   {
      FUNC1(pl_thumb->playlist);
      pl_thumb->playlist = NULL;
   }

   if (pl_thumb->thumbnail_path_data)
   {
      FUNC0(pl_thumb->thumbnail_path_data);
      pl_thumb->thumbnail_path_data = NULL;
   }

   FUNC0(pl_thumb);
   pl_thumb = NULL;
}