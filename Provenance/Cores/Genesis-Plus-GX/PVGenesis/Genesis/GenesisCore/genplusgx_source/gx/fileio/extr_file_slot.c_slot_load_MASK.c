#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u32 ;
struct TYPE_7__ {unsigned long len; } ;
typedef  TYPE_1__ card_file ;
struct TYPE_9__ {int realchecksum; } ;
struct TYPE_8__ {unsigned long* sram; int /*<<< orphan*/  crc; int /*<<< orphan*/  on; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  CARD_WORKAREA ; 
 unsigned long CHUNKSIZE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* DEFAULT_PATH ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SysArea ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* rom_filename ; 
 TYPE_3__ rominfo ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,...) ; 
 TYPE_2__ sram ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ *,unsigned long) ; 

int FUNC23(int slot, int device)
{
  char filename[MAXPATHLEN];
  unsigned long filesize, done = 0;
  u8 *buffer;

  /* File Type */
  if (slot > 0)
  {
    FUNC8("Information","Loading State ...",1);
  }
  else
  {
    if (!sram.on)
    {
      FUNC9("Error","Backup RAM is disabled !");
      return 0;
    }

    FUNC8("Information","Loading Backup RAM ...",1);
  }

  /* Device Type */
  if (!device)
  {
    /* FAT file */
    if (slot > 0)
    {
      FUNC20 (filename,"%s/saves/%s.gp%d", DEFAULT_PATH, rom_filename, slot - 1);
    }
    else
    {
      FUNC20 (filename,"%s/saves/%s.srm", DEFAULT_PATH, rom_filename);
    }

    /* Open file */
    FILE *fp = FUNC12(filename, "rb");
    if (!fp)
    {
      FUNC9("Error","Unable to open file !");
      return 0;
    }

    /* Get file size */
    FUNC15(fp, 0, SEEK_END);
    filesize = FUNC16(fp);
    FUNC15(fp, 0, SEEK_SET);

    /* allocate buffer */
    buffer = (u8 *)FUNC17(32,filesize);
    if (!buffer)
    {
      FUNC9("Error","Unable to allocate memory !");
      FUNC11(fp);
      return 0;
    }

    /* Read into buffer (2k blocks) */
    while (filesize > CHUNKSIZE)
    {
      FUNC13(buffer + done, CHUNKSIZE, 1, fp);
      done += CHUNKSIZE;
      filesize -= CHUNKSIZE;
    }

    /* Read remaining bytes */
    FUNC13(buffer + done, filesize, 1, fp);
    done += filesize;

    /* Close file */
    FUNC11(fp);
  }
  else
  {
    /* Memory Card file */
    if (slot > 0)
    {
      FUNC20(filename, "MD-%04X.gp%d", rominfo.realchecksum, slot - 1);
    }
    else
    {
      FUNC20(filename, "MD-%04X.srm", rominfo.realchecksum);
    }

    /* Initialise the CARD system */
    char action[64];
    FUNC19(&SysArea, 0, CARD_WORKAREA);
    FUNC2("GENP", "00");

    /* CARD slot */
    device--;

    /* Attempt to mount the card */
    if (!FUNC6(device))
    {
      FUNC9("Error","Unable to mount memory card");
      return 0;
    }
    
    /* Retrieve the sector size */
    u32 SectorSize = 0;
    int CardError = FUNC1(device, &SectorSize);
    if (!SectorSize)
    {
      FUNC20(action, "Invalid sector size (%d)", CardError);
      FUNC9("Error",action);
      FUNC5(device);
      return 0;
    }

    /* Open file */
    card_file CardFile;
    CardError = FUNC3(device, filename, &CardFile);
    if (CardError)
    {
      FUNC20(action, "Unable to open file (%d)", CardError);
      FUNC9("Error",action);
      FUNC5(device);
      return 0;
    }

    /* Get file size */
    filesize = CardFile.len;
    if (filesize % SectorSize)
    {
      filesize = ((filesize / SectorSize) + 1) * SectorSize;
    }

    /* Allocate buffer */
    u8 *in = (u8 *)FUNC17(32, filesize);
    if (!in)
    {
      FUNC9("Error","Unable to allocate memory !");
      FUNC0(&CardFile);
      FUNC5(device);
      return 0;
    }

    /* Read file sectors */
    while (filesize > 0)
    {
      FUNC4(&CardFile, &in[done], SectorSize, done);
      done += SectorSize;
      filesize -= SectorSize;
    }

    /* Close file */
    FUNC0(&CardFile);
    FUNC5(device);

    /* Uncompressed file size */
    FUNC18(&filesize, in + 2112, 4);
    buffer = (u8 *)FUNC17(32, filesize);
    if (!buffer)
    {
      FUNC14(in);
      FUNC9("Error","Unable to allocate memory !");
      return 0;
    }

    /* Uncompress file */
    FUNC22 ((Bytef *)buffer, &filesize, (Bytef *)(in + 2112 + 4), done - 2112 - 4);
    FUNC14(in);
  }

  if (slot > 0)
  {
    /* Load state */
    if (FUNC21(buffer) <= 0)
    {
      FUNC14(buffer);
      FUNC9("Error","Invalid state file !");
      return 0;
    }
  }
  else
  {
    /* load SRAM */
    FUNC18(sram.sram, buffer, 0x10000);

    /* update CRC */
    sram.crc = FUNC10(0, sram.sram, 0x10000);
  }

  FUNC14(buffer);
  FUNC7();
  return 1;
}