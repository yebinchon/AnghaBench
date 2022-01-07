
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long u32 ;
typedef int time_t ;
struct TYPE_13__ {int icon_addr; int icon_fmt; int icon_speed; int comment_addr; int time; } ;
typedef TYPE_1__ card_stat ;
struct TYPE_14__ {unsigned long len; int filenum; } ;
typedef TYPE_2__ card_file ;
struct TYPE_16__ {int realchecksum; } ;
struct TYPE_15__ {unsigned long* sram; scalar_t__ crc; int on; } ;
typedef int FILE ;
typedef int CardFile ;
typedef int Bytef ;


 int CARD_Close (TYPE_2__*) ;
 int CARD_Create (int,char*,unsigned long,TYPE_2__*) ;
 int CARD_Delete (int,char*) ;
 scalar_t__ CARD_ERROR_READY ;
 int CARD_GetSectorSize (int,unsigned long*) ;
 int CARD_GetStatus (int,int ,TYPE_1__*) ;
 int CARD_Init (char*,char*) ;
 scalar_t__ CARD_Open (int,char*,TYPE_2__*) ;
 int CARD_SetStatus (int,int ,TYPE_1__*) ;
 int CARD_Unmount (int) ;
 int CARD_WORKAREA ;
 int CARD_Write (TYPE_2__*,int *,unsigned long,unsigned long) ;
 unsigned long CHUNKSIZE ;
 int CardMount (int) ;
 char* DEFAULT_PATH ;
 int GUI_MsgBoxClose () ;
 int GUI_MsgBoxOpen (char*,char*,int) ;
 int GUI_WaitPrompt (char*,char*) ;
 int MAXPATHLEN ;
 unsigned long STATE_SIZE ;
 TYPE_2__ SysArea ;
 int compress2 (int *,unsigned long*,int *,unsigned long,int) ;
 scalar_t__ crc32 (int ,unsigned long*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (int *) ;
 int fwrite (int *,unsigned long,int,int *) ;
 int gxSaveScreenshot (char*) ;
 unsigned long icon ;
 scalar_t__ memalign (int,unsigned long) ;
 int memcpy (int *,...) ;
 int memset (TYPE_2__*,int ,int) ;
 char* rom_filename ;
 TYPE_4__ rominfo ;
 int sprintf (char*,char*,...) ;
 TYPE_3__ sram ;
 unsigned long state_save (int *) ;
 int strcpy (char*,char*) ;
 int time (int *) ;

int slot_save(int slot, int device)
{
  char filename[MAXPATHLEN];
  unsigned long filesize, done = 0;
  u8 *buffer;

  if (slot > 0)
  {
    GUI_MsgBoxOpen("Information","Saving State ...",1);


    buffer = (u8 *)memalign(32,STATE_SIZE);
    if (!buffer)
    {
      GUI_WaitPrompt("Error","Unable to allocate memory !");
      return 0;
    }

    filesize = state_save(buffer);
  }
  else
  {

    if (!sram.on)
    {
       GUI_WaitPrompt("Error","Backup RAM disabled !");
       return 0;
    }


    if (crc32(0, &sram.sram[0], 0x10000) == sram.crc)
    {
       GUI_WaitPrompt("Warning","Backup RAM not modified !");
       return 0;
    }

    GUI_MsgBoxOpen("Information","Saving Backup RAM ...",1);


    buffer = (u8 *)memalign(32, 0x10000);
    if (!buffer)
    {
      GUI_WaitPrompt("Error","Unable to allocate memory !");
      return 0;
    }


    memcpy(buffer, sram.sram, 0x10000);
    filesize = 0x10000;


    sram.crc = crc32(0, sram.sram, 0x10000);
  }


  if (!device)
  {

    if (slot > 0)
    {
      sprintf(filename, "%s/saves/%s.gp%d", DEFAULT_PATH, rom_filename, slot - 1);
    }
    else
    {
      sprintf(filename, "%s/saves/%s.srm", DEFAULT_PATH, rom_filename);
    }


    FILE *fp = fopen(filename, "wb");
    if (!fp)
    {
      GUI_WaitPrompt("Error","Unable to open file !");
      free(buffer);
      return 0;
    }


    while (filesize > CHUNKSIZE)
    {
      fwrite(buffer + done, CHUNKSIZE, 1, fp);
      done += CHUNKSIZE;
      filesize -= CHUNKSIZE;
    }


    fwrite(buffer + done, filesize, 1, fp);
    done += filesize;


    fclose(fp);
    free(buffer);


    GUI_MsgBoxClose();


    if (slot > 0)
    {
      sprintf(filename,"%s/saves/%s__%d.png", DEFAULT_PATH, rom_filename, slot - 1);
      gxSaveScreenshot(filename);
    }
  }
  else
  {

    if (slot > 0)
    {
      sprintf(filename, "MD-%04X.gp%d", rominfo.realchecksum, slot - 1);
    }
    else
    {
      sprintf(filename, "MD-%04X.srm", rominfo.realchecksum);
    }


    char action[64];
    memset(&SysArea, 0, CARD_WORKAREA);
    CARD_Init("GENP", "00");


    device--;


    if (!CardMount(device))
    {
      GUI_WaitPrompt("Error","Unable to mount memory card");
      free(buffer);
      return 0;
    }


    u32 SectorSize = 0;
    int CardError = CARD_GetSectorSize(device, &SectorSize);
    if (!SectorSize)
    {
      sprintf(action, "Invalid sector size (%d)", CardError);
      GUI_WaitPrompt("Error",action);
      CARD_Unmount(device);
      free(buffer);
      return 0;
    }


    u8 *out = (u8 *)memalign(32, filesize + 2112 + 4);
    if (!out)
    {
      GUI_WaitPrompt("Error","Unable to allocate memory !");
      CARD_Unmount(device);
      free(buffer);
      return 0;
    }


    char comment[2][32] = { {"Genesis Plus GX"}, {"SRAM Save"} };
    strcpy (comment[1], filename);
    memcpy (&out[0], &icon, 2048);
    memcpy (&out[2048], &comment[0], 64);


    done = filesize;
    memcpy(&out[2112], &done, 4);


    compress2 ((Bytef *)&out[2112 + 4], &filesize, (Bytef *)buffer, done, 9);


    filesize = filesize + 4 + 2112;
    if (filesize % SectorSize)
    {
      filesize = ((filesize / SectorSize) + 1) * SectorSize;
    }


    card_file CardFile;
    if (CARD_Open(device, filename, &CardFile) == CARD_ERROR_READY)
    {
      int size = filesize - CardFile.len;
      CARD_Close(&CardFile);
      memset(&CardFile,0,sizeof(CardFile));


      if (size > 0)
      {
        CardError = CARD_Create(device, "TEMP", size, &CardFile);
        if (CardError)
        {
          sprintf(action, "Unable to increase file size (%d)", CardError);
          GUI_WaitPrompt("Error",action);
          CARD_Unmount(device);
          free(out);
          free(buffer);
          return 0;
        }


        CARD_Close(&CardFile);
        memset(&CardFile,0,sizeof(CardFile));
        CARD_Delete(device, "TEMP");
      }


      CARD_Delete(device, filename);
    }


    CardError = CARD_Create(device, filename, filesize, &CardFile);
    if (CardError)
    {
      sprintf(action, "Unable to create file (%d)", CardError);
      GUI_WaitPrompt("Error",action);
      CARD_Unmount(device);
      free(out);
      free(buffer);
      return 0;
    }


    time_t rawtime;
    time(&rawtime);
    card_stat CardStatus;
    CARD_GetStatus(device, CardFile.filenum, &CardStatus);
    CardStatus.icon_addr = 0x0;
    CardStatus.icon_fmt = 2;
    CardStatus.icon_speed = 1;
    CardStatus.comment_addr = 2048;
    CardStatus.time = rawtime;
    CARD_SetStatus(device, CardFile.filenum, &CardStatus);


    while (filesize > 0)
    {
      CARD_Write(&CardFile, &out[done], SectorSize, done);
      filesize -= SectorSize;
      done += SectorSize;
    }


    CARD_Close(&CardFile);
    CARD_Unmount(device);
    free(out);
    free(buffer);


    GUI_MsgBoxClose();
  }

  return 1;
}
