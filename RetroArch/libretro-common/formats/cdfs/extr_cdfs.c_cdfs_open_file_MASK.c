#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int stream_sector_size; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ cdfs_track_t ;
struct TYPE_8__ {int current_sector; int first_sector; int size; TYPE_1__* track; } ;
typedef  TYPE_2__ cdfs_file_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int FUNC3(cdfs_file_t* file, cdfs_track_t* track, const char* path)
{
   if (!file || !track)
      return 0;

   FUNC2(file, 0, sizeof(*file));

   file->track = track;

   file->current_sector = -1;
   if (path != NULL)
   {
      file->first_sector = FUNC0(file, path);
   }
   else if (file->track->stream_sector_size)
   {
      file->first_sector = 0;
      file->size = (FUNC1(file->track->stream) / file->track->stream_sector_size) * 2048;
   }
   else
   {
      file->first_sector = -1;
   }

   return (file->first_sector >= 0);
}