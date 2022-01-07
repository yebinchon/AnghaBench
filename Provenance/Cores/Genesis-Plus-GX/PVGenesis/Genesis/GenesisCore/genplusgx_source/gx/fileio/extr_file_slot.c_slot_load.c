
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long u32 ;
struct TYPE_7__ {unsigned long len; } ;
typedef TYPE_1__ card_file ;
struct TYPE_9__ {int realchecksum; } ;
struct TYPE_8__ {unsigned long* sram; int crc; int on; } ;
typedef int FILE ;
typedef int Bytef ;


 int CARD_Close (TYPE_1__*) ;
 int CARD_GetSectorSize (int,unsigned long*) ;
 int CARD_Init (char*,char*) ;
 int CARD_Open (int,char*,TYPE_1__*) ;
 int CARD_Read (TYPE_1__*,int *,unsigned long,unsigned long) ;
 int CARD_Unmount (int) ;
 int CARD_WORKAREA ;
 unsigned long CHUNKSIZE ;
 int CardMount (int) ;
 char* DEFAULT_PATH ;
 int GUI_MsgBoxClose () ;
 int GUI_MsgBoxOpen (char*,char*,int) ;
 int GUI_WaitPrompt (char*,char*) ;
 int MAXPATHLEN ;
 int SEEK_END ;
 int SEEK_SET ;
 int SysArea ;
 int crc32 (int ,unsigned long*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int *,unsigned long,int,int *) ;
 int free (int *) ;
 int fseek (int *,int ,int ) ;
 unsigned long ftell (int *) ;
 scalar_t__ memalign (int,unsigned long) ;
 int memcpy (unsigned long*,int *,int) ;
 int memset (int *,int ,int ) ;
 char* rom_filename ;
 TYPE_3__ rominfo ;
 int sprintf (char*,char*,...) ;
 TYPE_2__ sram ;
 scalar_t__ state_load (int *) ;
 int uncompress (int *,unsigned long*,int *,unsigned long) ;

int slot_load(int slot, int device)
{
  char filename[MAXPATHLEN];
  unsigned long filesize, done = 0;
  u8 *buffer;


  if (slot > 0)
  {
    GUI_MsgBoxOpen("Information","Loading State ...",1);
  }
  else
  {
    if (!sram.on)
    {
      GUI_WaitPrompt("Error","Backup RAM is disabled !");
      return 0;
    }

    GUI_MsgBoxOpen("Information","Loading Backup RAM ...",1);
  }


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
    if (!fp)
    {
      GUI_WaitPrompt("Error","Unable to open file !");
      return 0;
    }


    fseek(fp, 0, SEEK_END);
    filesize = ftell(fp);
    fseek(fp, 0, SEEK_SET);


    buffer = (u8 *)memalign(32,filesize);
    if (!buffer)
    {
      GUI_WaitPrompt("Error","Unable to allocate memory !");
      fclose(fp);
      return 0;
    }


    while (filesize > CHUNKSIZE)
    {
      fread(buffer + done, CHUNKSIZE, 1, fp);
      done += CHUNKSIZE;
      filesize -= CHUNKSIZE;
    }


    fread(buffer + done, filesize, 1, fp);
    done += filesize;


    fclose(fp);
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
      return 0;
    }


    u32 SectorSize = 0;
    int CardError = CARD_GetSectorSize(device, &SectorSize);
    if (!SectorSize)
    {
      sprintf(action, "Invalid sector size (%d)", CardError);
      GUI_WaitPrompt("Error",action);
      CARD_Unmount(device);
      return 0;
    }


    card_file CardFile;
    CardError = CARD_Open(device, filename, &CardFile);
    if (CardError)
    {
      sprintf(action, "Unable to open file (%d)", CardError);
      GUI_WaitPrompt("Error",action);
      CARD_Unmount(device);
      return 0;
    }


    filesize = CardFile.len;
    if (filesize % SectorSize)
    {
      filesize = ((filesize / SectorSize) + 1) * SectorSize;
    }


    u8 *in = (u8 *)memalign(32, filesize);
    if (!in)
    {
      GUI_WaitPrompt("Error","Unable to allocate memory !");
      CARD_Close(&CardFile);
      CARD_Unmount(device);
      return 0;
    }


    while (filesize > 0)
    {
      CARD_Read(&CardFile, &in[done], SectorSize, done);
      done += SectorSize;
      filesize -= SectorSize;
    }


    CARD_Close(&CardFile);
    CARD_Unmount(device);


    memcpy(&filesize, in + 2112, 4);
    buffer = (u8 *)memalign(32, filesize);
    if (!buffer)
    {
      free(in);
      GUI_WaitPrompt("Error","Unable to allocate memory !");
      return 0;
    }


    uncompress ((Bytef *)buffer, &filesize, (Bytef *)(in + 2112 + 4), done - 2112 - 4);
    free(in);
  }

  if (slot > 0)
  {

    if (state_load(buffer) <= 0)
    {
      free(buffer);
      GUI_WaitPrompt("Error","Invalid state file !");
      return 0;
    }
  }
  else
  {

    memcpy(sram.sram, buffer, 0x10000);


    sram.crc = crc32(0, sram.sram, 0x10000);
  }

  free(buffer);
  GUI_MsgBoxClose();
  return 1;
}
