#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum rarch_movie_type { ____Placeholder_rarch_movie_type } rarch_movie_type ;
struct TYPE_6__ {size_t* frame_pos; size_t min_file_pos; int frame_mask; } ;
typedef  TYPE_1__ bsv_movie_t ;

/* Variables and functions */
 int RARCH_MOVIE_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static bsv_movie_t *FUNC4(const char *path,
      enum rarch_movie_type type)
{
   size_t *frame_pos   = NULL;
   bsv_movie_t *handle = (bsv_movie_t*)FUNC3(1, sizeof(*handle));

   if (!handle)
      return NULL;

   if (type == RARCH_MOVIE_PLAYBACK)
   {
      if (!FUNC1(handle, path))
         goto error;
   }
   else if (!FUNC2(handle, path))
      goto error;

   /* Just pick something really large
    * ~1 million frames rewind should do the trick. */
   if (!(frame_pos = (size_t*)FUNC3((1 << 20), sizeof(size_t))))
      goto error;

   handle->frame_pos       = frame_pos;

   handle->frame_pos[0]    = handle->min_file_pos;
   handle->frame_mask      = (1 << 20) - 1;

   return handle;

error:
   FUNC0(handle);
   return NULL;
}