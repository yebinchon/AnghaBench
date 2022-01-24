#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  video; int /*<<< orphan*/ * vsram; int /*<<< orphan*/ * cram; int /*<<< orphan*/ * vram; } ;

/* Variables and functions */
 TYPE_1__ Pico ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*) ; 

int FUNC5(const char *fname)
{
  void *afile;
  int ret;

  afile = FUNC3(fname, 0);
  if (afile == NULL)
    return -1;

  ret = FUNC4(afile);
  if (ret != 0) {
    // assume legacy
    FUNC2(afile, 0x10020, SEEK_SET);  // skip header and RAM
    FUNC1(Pico.vram, 1, sizeof(Pico.vram), afile);
    FUNC2(afile, 0x2000, SEEK_CUR);
    FUNC1(Pico.cram, 1, sizeof(Pico.cram), afile);
    FUNC1(Pico.vsram, 1, sizeof(Pico.vsram), afile);
    FUNC2(afile, 0x221a0, SEEK_SET);
    FUNC1(&Pico.video, 1, sizeof(Pico.video), afile);
  }
  FUNC0(afile);
  return 0;
}