#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_6__ {TYPE_1__* tracks; } ;
struct TYPE_8__ {size_t cycles; size_t latency; size_t index; size_t lba; size_t scanOffset; size_t volume; size_t status; int sectorSize; TYPE_2__ toc; } ;
struct TYPE_7__ {scalar_t__ datasource; } ;
struct TYPE_5__ {int start; int offset; scalar_t__ fd; TYPE_3__ vf; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_4__ cdd ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 

int FUNC3(uint8 *state)
{
  int lba;
  int bufferptr = 0;

  FUNC1(&cdd.cycles, sizeof(cdd.cycles));
  FUNC1(&cdd.latency, sizeof(cdd.latency));
  FUNC1(&cdd.index, sizeof(cdd.index));
  FUNC1(&cdd.lba, sizeof(cdd.lba));
  FUNC1(&cdd.scanOffset, sizeof(cdd.scanOffset));
  FUNC1(&cdd.volume, sizeof(cdd.volume));
  FUNC1(&cdd.status, sizeof(cdd.status));

  /* adjust current LBA within track limit */
  lba = cdd.lba;
  if (lba < cdd.toc.tracks[cdd.index].start)
  {
    lba = cdd.toc.tracks[cdd.index].start;
  }

  /* seek to current track position */
  if (!cdd.index)
  {
    /* DATA track */
    if (cdd.toc.tracks[0].fd)
    {
      FUNC0(cdd.toc.tracks[0].fd, lba * cdd.sectorSize, SEEK_SET);
    }
  }
#ifdef USE_LIBTREMOR
  else if (cdd.toc.tracks[cdd.index].vf.datasource)
  {
    ov_pcm_seek(&cdd.toc.tracks[cdd.index].vf, (lba - cdd.toc.tracks[cdd.index].start) * 588 - cdd.toc.tracks[cdd.index].offset);
  }
#endif 
  else if (cdd.toc.tracks[cdd.index].fd)
  {
    /* AUDIO track */
    FUNC0(cdd.toc.tracks[cdd.index].fd, (lba * 2352) - cdd.toc.tracks[cdd.index].offset, SEEK_SET);
  }

  return bufferptr;
}