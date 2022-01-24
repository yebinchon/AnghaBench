#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_11__ {int valid; int /*<<< orphan*/  min; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; scalar_t__ year; } ;
typedef  TYPE_1__ t_slot ;
struct tm {int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; scalar_t__ tm_year; } ;
struct stat {int /*<<< orphan*/  st_mtime; } ;
struct TYPE_12__ {int /*<<< orphan*/  time; } ;
typedef  TYPE_2__ card_stat ;
struct TYPE_13__ {int /*<<< orphan*/  filenum; } ;
typedef  TYPE_3__ card_file ;
struct TYPE_14__ {int realchecksum; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ CARD_ERROR_READY ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int CARD_WORKAREA ; 
 scalar_t__ FUNC5 (int) ; 
 char* DEFAULT_PATH ; 
 int MAXPATHLEN ; 
 TYPE_1__ SysArea ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 struct tm* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* rom_filename ; 
 TYPE_5__ rominfo ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct stat*) ; 

void FUNC12(int slot, int device, t_slot *ptr)
{
  if (!ptr) return;
  
  char filename[MAXPATHLEN];
  FUNC9(ptr,0,sizeof(t_slot));

  if (!device)
  {
    /* FAT support */
    if (slot > 0)
    {
      FUNC10 (filename,"%s/saves/%s.gp%d", DEFAULT_PATH, rom_filename, slot - 1);
    }
    else
    {
      FUNC10 (filename,"%s/saves/%s.srm", DEFAULT_PATH, rom_filename);
    }

    /* Open file */
    FILE *fp = FUNC7(filename, "rb");
    if (fp)
    {
      /* Retrieve date & close */
	    struct stat filestat;
			FUNC11(filename, &filestat);
      struct tm *timeinfo = FUNC8(&filestat.st_mtime);
      ptr->year = 1900 + timeinfo->tm_year;
      ptr->month = timeinfo->tm_mon;
      ptr->day = timeinfo->tm_mday;
      ptr->hour = timeinfo->tm_hour;
      ptr->min = timeinfo->tm_min;
      FUNC6(fp);
      ptr->valid = 1;
    }
  }
  else
  {
    /* Memory Card support */
    if (slot > 0)
      FUNC10(filename,"MD-%04X.gp%d", rominfo.realchecksum, slot - 1);
    else
      FUNC10(filename,"MD-%04X.srm", rominfo.realchecksum);

    /* Initialise the CARD system */
    FUNC9(&SysArea, 0, CARD_WORKAREA);
    FUNC2("GENP", "00");

    /* CARD slot */
    device--;

    /* Mount CARD */
    if (FUNC5(device))
    {
      /* Open file */
      card_file CardFile;
      if (FUNC3(device, filename, &CardFile) == CARD_ERROR_READY)
      {
        /* Retrieve date & close */
        card_stat CardStatus;
        FUNC1(device, CardFile.filenum, &CardStatus);
        time_t rawtime = CardStatus.time;
	      struct tm *timeinfo = FUNC8(&rawtime);
        ptr->year = 1900 + timeinfo->tm_year;
        ptr->month = timeinfo->tm_mon;
        ptr->day = timeinfo->tm_mday;
        ptr->hour = timeinfo->tm_hour;
        ptr->min = timeinfo->tm_min;
        FUNC0(&CardFile);
        ptr->valid = 1;
      }
      FUNC4(device);
    }
  }
}