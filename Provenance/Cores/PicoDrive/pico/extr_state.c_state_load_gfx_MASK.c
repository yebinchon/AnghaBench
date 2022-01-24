#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dirty_pal; } ;
struct TYPE_7__ {TYPE_2__ video; TYPE_2__ vsram; TYPE_2__ cram; TYPE_2__ vram; } ;
struct TYPE_5__ {TYPE_2__ pal; TYPE_2__ dram; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
#define  CHUNK_32XPAL 134 
#define  CHUNK_32XSYS 133 
#define  CHUNK_CRAM 132 
#define  CHUNK_DRAM 131 
 char CHUNK_FM ; 
 char CHUNK_MISC_CD ; 
#define  CHUNK_VIDEO 130 
#define  CHUNK_VRAM 129 
#define  CHUNK_VSRAM 128 
 int PAHW_32X ; 
 int PAHW_MCD ; 
 TYPE_3__ Pico ; 
 TYPE_2__ Pico32x ; 
 TYPE_1__* Pico32xMem ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ g_read_offs ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6(void *file)
{
  int ver, len, found = 0, to_find = 4;
  char buff[8];

  if (PicoAHW & PAHW_32X)
    to_find += 2;

  g_read_offs = 0;
  FUNC0(8, buff);
  if (FUNC5((char *)buff, "PicoSMCD", 8) && FUNC5((char *)buff, "PicoSEXT", 8))
    FUNC2("bad header");
  FUNC0(4, &ver);

  while (!FUNC3(file) && found < to_find)
  {
    FUNC0(1, buff);
    FUNC0(4, &len);
    if (len < 0 || len > 1024*512) FUNC2("bad length");
    if (buff[0] > CHUNK_FM && buff[0] <= CHUNK_MISC_CD && !(PicoAHW & PAHW_MCD))
      FUNC2("cd chunk in non CD state?");

    switch (buff[0])
    {
      case CHUNK_VRAM:  FUNC1(Pico.vram);  found++; break;
      case CHUNK_CRAM:  FUNC1(Pico.cram);  found++; break;
      case CHUNK_VSRAM: FUNC1(Pico.vsram); found++; break;
      case CHUNK_VIDEO: FUNC1(Pico.video); found++; break;

#ifndef NO_32X
      case CHUNK_DRAM:
        if (Pico32xMem != NULL)
          FUNC1(Pico32xMem->dram);
        break;

      case CHUNK_32XPAL:
        if (Pico32xMem != NULL)
          FUNC1(Pico32xMem->pal);
        Pico32x.dirty_pal = 1;
        break;

      case CHUNK_32XSYS:
        FUNC1(Pico32x);
        break;
#endif
      default:
        FUNC4(file, len, SEEK_CUR);
        break;
    }
  }

out:
readend:
  return 0;
}