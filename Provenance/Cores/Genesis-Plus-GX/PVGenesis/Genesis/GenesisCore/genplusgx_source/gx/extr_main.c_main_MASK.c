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
struct TYPE_2__ {scalar_t__ autoload; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ConfigRequested ; 
 char* DEFAULT_PATH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PowerOff_cb ; 
 int /*<<< orphan*/  Reset_cb ; 
 int SILENT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  TYPE_RECENT ; 
 char* VERSION ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (char*) ; 
 char* osd_version ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 

int FUNC26 (int argc, char *argv[])
{
 #ifdef HW_RVL
  /* enable 64-byte fetch mode for L2 cache */
  L2Enhance();
  
  /* initialize DI interface */
  DI_UseCache(0);
  DI_Init();

  sprintf(osd_version, "%s (IOS %d)", VERSION, IOS_GetVersion());
#else
  FUNC24(osd_version, "%s (GCN)", VERSION);
#endif

  /* initialize video engine */
  FUNC15();

#ifndef HW_RVL
  /* initialize DVD interface */
  FUNC2();
#endif

  /* initialize input engine */
  FUNC14();

  /* initialize FAT devices */
  int retry = 0;
  int fatMounted = 0;

  /* try to mount FAT devices during 3 seconds */
  while (!fatMounted && (retry < 12))
  {
    fatMounted = FUNC11();
    FUNC25(250000);
    retry++;
  }

  if (fatMounted)
  {
    /* base directory */
    char pathname[MAXPATHLEN];
    FUNC24 (pathname, DEFAULT_PATH);
    DIR *dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);

    /* default SRAM & Savestate files directories */ 
    FUNC24 (pathname, "%s/saves",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/saves/md",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/saves/ms",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/saves/gg",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/saves/sg",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/saves/cd",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);

    /* default Snapshot files directories */ 
    FUNC24 (pathname, "%s/snaps",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/snaps/md",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/snaps/ms",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/snaps/gg",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/snaps/sg",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/snaps/cd",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);

    /* default Cheat files directories */ 
    FUNC24 (pathname, "%s/cheats",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/cheats/md",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/cheats/ms",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/cheats/gg",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/cheats/sg",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
    FUNC24 (pathname, "%s/cheats/cd",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);

    /* default BIOS ROM files directories */ 
    FUNC24 (pathname, "%s/bios",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);

    /* default LOCK-ON ROM files directories */ 
    FUNC24 (pathname, "%s/lock-on",DEFAULT_PATH);
    dir = FUNC21(pathname);
    if (dir) FUNC9(dir);
    else FUNC20(pathname,S_IRWXU);
  }

  /* initialize sound engine */
  FUNC12();

  /* initialize genesis plus core */
  FUNC17();
  FUNC10();
  FUNC18();

  /* auto-load last ROM file */
  if (config.autoload)
  {
    SILENT = 1;
    if (FUNC6(TYPE_RECENT, -1))
    {
      if (FUNC5(0))
      {
        FUNC22();
        FUNC16();
        FUNC13();
        ConfigRequested = 0;
      }
    }
    SILENT = 0;
  }

  /* show disclaimer */
  if (ConfigRequested)
  {
    FUNC19();
  }

#ifdef HW_RVL
  /* power button callback */
  SYS_SetPowerCallback(PowerOff_cb);
#endif

  /* reset button callback */
  FUNC8(Reset_cb);

  /* main emulation loop */
  FUNC23();

  /* we should never return anyway */
  return 0;
}