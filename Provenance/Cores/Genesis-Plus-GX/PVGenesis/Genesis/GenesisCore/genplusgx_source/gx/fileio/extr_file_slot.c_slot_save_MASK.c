#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u32 ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_13__ {int icon_addr; int icon_fmt; int icon_speed; int comment_addr; int /*<<< orphan*/  time; } ;
typedef  TYPE_1__ card_stat ;
struct TYPE_14__ {unsigned long len; int /*<<< orphan*/  filenum; } ;
typedef  TYPE_2__ card_file ;
struct TYPE_16__ {int realchecksum; } ;
struct TYPE_15__ {unsigned long* sram; scalar_t__ crc; int /*<<< orphan*/  on; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CardFile ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int,char*,unsigned long,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ CARD_ERROR_READY ; 
 int FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int CARD_WORKAREA ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long CHUNKSIZE ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char* DEFAULT_PATH ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int MAXPATHLEN ; 
 unsigned long STATE_SIZE ; 
 TYPE_2__ SysArea ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ *,unsigned long,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 unsigned long icon ; 
 scalar_t__ FUNC21 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 char* rom_filename ; 
 TYPE_4__ rominfo ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,...) ; 
 TYPE_3__ sram ; 
 unsigned long FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

int FUNC28(int slot, int device)
{
  char filename[MAXPATHLEN];
  unsigned long filesize, done = 0;
  u8 *buffer;

  if (slot > 0)
  {
    FUNC12("Information","Saving State ...",1);

    /* allocate buffer */
    buffer = (u8 *)FUNC21(32,STATE_SIZE);
    if (!buffer)
    {
      FUNC13("Error","Unable to allocate memory !");
      return 0;
    }

    filesize = FUNC25(buffer);
  }
  else
  {
    /* only save if SRAM is enabled */
    if (!sram.on)
    {
       FUNC13("Error","Backup RAM disabled !");
       return 0;
    }

    /* only save if SRAM has been modified */
    if (FUNC15(0, &sram.sram[0], 0x10000) == sram.crc)
    {
       FUNC13("Warning","Backup RAM not modified !");
       return 0;
    }

    FUNC12("Information","Saving Backup RAM ...",1);

    /* allocate buffer */
    buffer = (u8 *)FUNC21(32, 0x10000);
    if (!buffer)
    {
      FUNC13("Error","Unable to allocate memory !");
      return 0;
    }

    /* copy SRAM data */
    FUNC22(buffer, sram.sram, 0x10000);
    filesize = 0x10000;

    /* update CRC */
    sram.crc = FUNC15(0, sram.sram, 0x10000);
  }

  /* Device Type */
  if (!device)
  {
    /* FAT filename */
    if (slot > 0)
    {
      FUNC24(filename, "%s/saves/%s.gp%d", DEFAULT_PATH, rom_filename, slot - 1);
    }
    else
    {
      FUNC24(filename, "%s/saves/%s.srm", DEFAULT_PATH, rom_filename);
    }

    /* Open file */
    FILE *fp = FUNC17(filename, "wb");
    if (!fp)
    {
      FUNC13("Error","Unable to open file !");
      FUNC18(buffer);
      return 0;
    }

    /* Write from buffer (2k blocks) */
    while (filesize > CHUNKSIZE)
    {
      FUNC19(buffer + done, CHUNKSIZE, 1, fp);
      done += CHUNKSIZE;
      filesize -= CHUNKSIZE;
    }

    /* Write remaining bytes */
    FUNC19(buffer + done, filesize, 1, fp);
    done += filesize;

    /* Close file */
    FUNC16(fp);
    FUNC18(buffer);

    /* Close message box */
    FUNC11();

    /* Save state screenshot */
    if (slot > 0)
    {
      FUNC24(filename,"%s/saves/%s__%d.png", DEFAULT_PATH, rom_filename, slot - 1);
      FUNC20(filename);
    }
  }
  else
  {
    /* Memory Card filename */
    if (slot > 0)
    {
      FUNC24(filename, "MD-%04X.gp%d", rominfo.realchecksum, slot - 1);
    }
    else
    {
      FUNC24(filename, "MD-%04X.srm", rominfo.realchecksum);
    }

    /* Initialise the CARD system */
    char action[64];
    FUNC23(&SysArea, 0, CARD_WORKAREA);
    FUNC5("GENP", "00");

    /* CARD slot */
    device--;

    /* Attempt to mount the card */
    if (!FUNC10(device))
    {
      FUNC13("Error","Unable to mount memory card");
      FUNC18(buffer);
      return 0;
    }

    /* Retrieve sector size */
    u32 SectorSize = 0;
    int CardError = FUNC3(device, &SectorSize);
    if (!SectorSize)
    {
      FUNC24(action, "Invalid sector size (%d)", CardError);
      FUNC13("Error",action);
      FUNC8(device);
      FUNC18(buffer);
      return 0;
    }

    /* Build output buffer */
    u8 *out = (u8 *)FUNC21(32, filesize + 2112 + 4);
    if (!out)
    {
      FUNC13("Error","Unable to allocate memory !");
      FUNC8(device);
      FUNC18(buffer);
      return 0;
    }

    /* Memory Card file header */
    char comment[2][32] = { {"Genesis Plus GX"}, {"SRAM Save"} };
    FUNC26 (comment[1], filename);
    FUNC22 (&out[0], &icon, 2048);
    FUNC22 (&out[2048], &comment[0], 64);

    /* uncompressed size */
    done = filesize;
    FUNC22(&out[2112], &done, 4);
  
    /* compress file */
    FUNC14 ((Bytef *)&out[2112 + 4], &filesize, (Bytef *)buffer, done, 9);

    /* Adjust file size */
    filesize = filesize + 4 + 2112;
    if (filesize % SectorSize)
    {
      filesize = ((filesize / SectorSize) + 1) * SectorSize;
    }

    /* Check if file already exists */
    card_file CardFile;
    if (FUNC6(device, filename, &CardFile) == CARD_ERROR_READY)
    {
      int size = filesize - CardFile.len;
      FUNC0(&CardFile);
      FUNC23(&CardFile,0,sizeof(CardFile));

      /* Check file new size */
      if (size > 0)
      {
        CardError = FUNC1(device, "TEMP", size, &CardFile);
        if (CardError)
        {
          FUNC24(action, "Unable to increase file size (%d)", CardError);
          FUNC13("Error",action);
          FUNC8(device);
          FUNC18(out);
          FUNC18(buffer);
          return 0;
        }

        /* delete temporary file */
        FUNC0(&CardFile);
        FUNC23(&CardFile,0,sizeof(CardFile));
        FUNC2(device, "TEMP");
      }

      /* delete previously existing file */
      FUNC2(device, filename);
    }

    /* Create a new file */
    CardError = FUNC1(device, filename, filesize, &CardFile);
    if (CardError)
    {
      FUNC24(action, "Unable to create file (%d)", CardError);
      FUNC13("Error",action);
      FUNC8(device);
      FUNC18(out);
      FUNC18(buffer);
      return 0;
    }

    /* Update file informations */
    time_t rawtime;
    FUNC27(&rawtime);
    card_stat CardStatus;
    FUNC4(device, CardFile.filenum, &CardStatus);
    CardStatus.icon_addr = 0x0;
    CardStatus.icon_fmt = 2;
    CardStatus.icon_speed = 1;
    CardStatus.comment_addr = 2048;
    CardStatus.time = rawtime;
    FUNC7(device, CardFile.filenum, &CardStatus);

    /* Write file sectors */
    while (filesize > 0)
    {
      FUNC9(&CardFile, &out[done], SectorSize, done);
      filesize -= SectorSize;
      done += SectorSize;
    }

    /* Close file */
    FUNC0(&CardFile);
    FUNC8(device);
    FUNC18(out);
    FUNC18(buffer);

    /* Close message box */
    FUNC11();
  }

  return 1;
}