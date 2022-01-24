#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int last; int end; TYPE_1__* tracks; } ;
struct TYPE_6__ {int sectorSize; int loaded; int /*<<< orphan*/  status; TYPE_2__ toc; } ;
struct TYPE_4__ {int start; int end; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int CT_BIN ; 
 int EL_ANOMALY ; 
 int EL_STATUS ; 
 int /*<<< orphan*/  NO_DISC ; 
 TYPE_3__ cdd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char const*,int*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int* toc_dungeon ; 
 int* toc_ffight ; 
 int* toc_ffightj ; 
 int* toc_lunar ; 
 int* toc_shadow ; 
 int* toc_snatcher ; 

int FUNC6(const char *filename, int type)
{
  char header[0x210];
  int ret;

  /* first unmount any loaded disc */
  FUNC0();

  /* genplus parses cue here, in PD we use our own parser */
  ret = FUNC2(filename, &type);
  if (ret != 0)
    return ret;

  /* read first 16 bytes */
  FUNC4(header, 0x10, cdd.toc.tracks[0].fd);

  /* look for valid CD image ID string */
  if (FUNC3("SEGADISCSYSTEM", header, 14))
  {    
    /* if not found, read next 16 bytes */
    FUNC4(header, 0x10, cdd.toc.tracks[0].fd);

    /* look again for valid CD image ID string */
    if (FUNC3("SEGADISCSYSTEM", header, 14))
    {
      FUNC1(EL_STATUS|EL_ANOMALY, "cd: bad cd image?");
      /* assume bin without security code */
    }

    /* BIN format (2352 bytes data blocks) */
    cdd.sectorSize = 2352;
  }
  else
  {
    /* ISO format (2048 bytes data blocks) */
    cdd.sectorSize = 2048;
  }

  ret = (type == CT_BIN) ? 2352 : 2048;
  if (ret != cdd.sectorSize)
    FUNC1(EL_STATUS|EL_ANOMALY, "cd: type detection mismatch");

  /* read CD image header + security code */
  FUNC4(header + 0x10, 0x200, cdd.toc.tracks[0].fd);

  /* Simulate audio tracks if none found */
  if (cdd.toc.last == 1)
  {
    /* Some games require exact TOC infos */
    if (FUNC5(header + 0x180,"T-95035") != NULL)
    {
      /* Snatcher */
      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_snatcher[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 21);
    }
    else if (FUNC5(header + 0x180,"T-127015") != NULL)
    {
      /* Lunar - The Silver Star */
      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_lunar[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 52);
    }
    else if (FUNC5(header + 0x180,"T-113045") != NULL)
    {
      /* Shadow of the Beast II */
      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_shadow[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 15);
    }
    else if (FUNC5(header + 0x180,"T-143025") != NULL)
    {
      /* Dungeon Explorer */
      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_dungeon[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 13);
    }
    else if (FUNC5(header + 0x180,"MK-4410") != NULL)
    {
      /* Final Fight CD (USA, Europe) */
      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_ffight[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 26);
    }
    else if (FUNC5(header + 0x180,"G-6013") != NULL)
    {
      /* Final Fight CD (Japan) */
      cdd.toc.last = cdd.toc.end = 0;
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + toc_ffightj[cdd.toc.last];
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while (cdd.toc.last < 29);
    }
#if 0
    else
    {
      /* default TOC (99 tracks & 2s per audio tracks) */
      do
      {
        cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end + 2*75;
        cdd.toc.tracks[cdd.toc.last].end = cdd.toc.tracks[cdd.toc.last].start + 2*75;
        cdd.toc.end = cdd.toc.tracks[cdd.toc.last].end;
        cdd.toc.last++;
      }
      while ((cdd.toc.last < 99) && (cdd.toc.end < 56*60*75));
    }
#endif
  }

  /* Lead-out */
  cdd.toc.tracks[cdd.toc.last].start = cdd.toc.end;

  /* CD loaded */
  cdd.loaded = 1;

  /* disc not scanned yet */
  cdd.status = NO_DISC;

  return 0;
}