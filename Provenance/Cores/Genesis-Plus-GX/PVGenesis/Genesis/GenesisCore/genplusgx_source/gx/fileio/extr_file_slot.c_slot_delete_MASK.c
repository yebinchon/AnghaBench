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
struct TYPE_2__ {int realchecksum; } ;

/* Variables and functions */
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CARD_WORKAREA ; 
 scalar_t__ FUNC3 (int) ; 
 char* DEFAULT_PATH ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SysArea ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 char* rom_filename ; 
 TYPE_1__ rominfo ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 

int FUNC7(int slot, int device)
{
  char filename[MAXPATHLEN];
  int ret = 0;

  if (!device)
  {
    /* FAT support */
    if (slot > 0)
    {
      /* remove screenshot */
      FUNC6(filename,"%s/saves/%s__%d.png", DEFAULT_PATH, rom_filename, slot - 1);
      FUNC5(filename);

      FUNC6 (filename,"%s/saves/%s.gp%d", DEFAULT_PATH, rom_filename, slot - 1);
    }
    else
    {
      FUNC6 (filename,"%s/saves/%s.srm", DEFAULT_PATH, rom_filename);
    }

    /* Delete file */
    ret = FUNC5(filename);
  }
  else
  {
    /* Memory Card support */
    if (slot > 0)
      FUNC6(filename,"MD-%04X.gp%d", rominfo.realchecksum, slot - 1);
    else
      FUNC6(filename,"MD-%04X.srm", rominfo.realchecksum);

    /* Initialise the CARD system */
    FUNC4(&SysArea, 0, CARD_WORKAREA);
    FUNC1("GENP", "00");

    /* CARD slot */
    device--;

    /* Mount CARD */
    if (FUNC3(device))
    {
      /* Delete file */
      ret = FUNC0(device,filename);
      FUNC2(device);
    }
  }

  return ret;
}