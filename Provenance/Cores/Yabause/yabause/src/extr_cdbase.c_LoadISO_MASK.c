#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ctl_addr; int fad_start; int file_size; int sector_size; int fad_end; scalar_t__ file_id; int /*<<< orphan*/ * fp; scalar_t__ file_offset; } ;
typedef  TYPE_1__ track_info_struct ;
typedef  int /*<<< orphan*/  session_info_struct ;
struct TYPE_7__ {int session_num; TYPE_3__* session; } ;
struct TYPE_6__ {int fad_start; int track_num; int fad_end; TYPE_1__* track; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  YAB_ERR_MEMORYALLOC ; 
 int /*<<< orphan*/  YAB_ERR_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__ disc ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(FILE *iso_file)
{
   track_info_struct *track;

   disc.session_num = 1;
   disc.session = FUNC4(sizeof(session_info_struct) * disc.session_num);
   if (disc.session == NULL)
   {
      FUNC0(YAB_ERR_MEMORYALLOC, NULL);
      return -1;
   }

   disc.session[0].fad_start = 150;
   disc.session[0].track_num = 1;
   disc.session[0].track = FUNC4(sizeof(track_info_struct) * disc.session[0].track_num);
   if (disc.session[0].track == NULL)
   {
      FUNC0(YAB_ERR_MEMORYALLOC, NULL);
      FUNC1(disc.session);
      disc.session = NULL;
      return -1;
   }

	FUNC5(disc.session[0].track, 0, sizeof(track_info_struct) * disc.session[0].track_num);

   track = disc.session[0].track;
   track->ctl_addr = 0x41;
   track->fad_start = 150;
   track->file_offset = 0;
   track->fp = iso_file;
   FUNC2(iso_file, 0, SEEK_END);
   track->file_size = FUNC3(iso_file);
   track->file_id = 0;

   if (0 == (track->file_size % 2048))
      track->sector_size = 2048;
   else if (0 == (track->file_size % 2352))
      track->sector_size = 2352;
   else
   {
      FUNC0(YAB_ERR_OTHER, "Unsupported CD image!\n");
      return -1;
   }

   disc.session[0].fad_end = track->fad_end = disc.session[0].fad_start + (track->file_size / track->sector_size);

   return 0;
}