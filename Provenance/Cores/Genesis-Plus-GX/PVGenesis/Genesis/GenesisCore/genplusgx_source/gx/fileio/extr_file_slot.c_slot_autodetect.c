
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_11__ {int valid; int min; int hour; int day; int month; scalar_t__ year; } ;
typedef TYPE_1__ t_slot ;
struct tm {int tm_min; int tm_hour; int tm_mday; int tm_mon; scalar_t__ tm_year; } ;
struct stat {int st_mtime; } ;
struct TYPE_12__ {int time; } ;
typedef TYPE_2__ card_stat ;
struct TYPE_13__ {int filenum; } ;
typedef TYPE_3__ card_file ;
struct TYPE_14__ {int realchecksum; } ;
typedef int FILE ;


 int CARD_Close (TYPE_3__*) ;
 scalar_t__ CARD_ERROR_READY ;
 int CARD_GetStatus (int,int ,TYPE_2__*) ;
 int CARD_Init (char*,char*) ;
 scalar_t__ CARD_Open (int,char*,TYPE_3__*) ;
 int CARD_Unmount (int) ;
 int CARD_WORKAREA ;
 scalar_t__ CardMount (int) ;
 char* DEFAULT_PATH ;
 int MAXPATHLEN ;
 TYPE_1__ SysArea ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 struct tm* localtime (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 char* rom_filename ;
 TYPE_5__ rominfo ;
 int sprintf (char*,char*,...) ;
 int stat (char*,struct stat*) ;

void slot_autodetect(int slot, int device, t_slot *ptr)
{
  if (!ptr) return;

  char filename[MAXPATHLEN];
  memset(ptr,0,sizeof(t_slot));

  if (!device)
  {

    if (slot > 0)
    {
      sprintf (filename,"%s/saves/%s.gp%d", DEFAULT_PATH, rom_filename, slot - 1);
    }
    else
    {
      sprintf (filename,"%s/saves/%s.srm", DEFAULT_PATH, rom_filename);
    }


    FILE *fp = fopen(filename, "rb");
    if (fp)
    {

     struct stat filestat;
   stat(filename, &filestat);
      struct tm *timeinfo = localtime(&filestat.st_mtime);
      ptr->year = 1900 + timeinfo->tm_year;
      ptr->month = timeinfo->tm_mon;
      ptr->day = timeinfo->tm_mday;
      ptr->hour = timeinfo->tm_hour;
      ptr->min = timeinfo->tm_min;
      fclose(fp);
      ptr->valid = 1;
    }
  }
  else
  {

    if (slot > 0)
      sprintf(filename,"MD-%04X.gp%d", rominfo.realchecksum, slot - 1);
    else
      sprintf(filename,"MD-%04X.srm", rominfo.realchecksum);


    memset(&SysArea, 0, CARD_WORKAREA);
    CARD_Init("GENP", "00");


    device--;


    if (CardMount(device))
    {

      card_file CardFile;
      if (CARD_Open(device, filename, &CardFile) == CARD_ERROR_READY)
      {

        card_stat CardStatus;
        CARD_GetStatus(device, CardFile.filenum, &CardStatus);
        time_t rawtime = CardStatus.time;
       struct tm *timeinfo = localtime(&rawtime);
        ptr->year = 1900 + timeinfo->tm_year;
        ptr->month = timeinfo->tm_mon;
        ptr->day = timeinfo->tm_mday;
        ptr->hour = timeinfo->tm_hour;
        ptr->min = timeinfo->tm_min;
        CARD_Close(&CardFile);
        ptr->valid = 1;
      }
      CARD_Unmount(device);
    }
  }
}
