
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_16__ {scalar_t__ ram; } ;
struct TYPE_15__ {scalar_t__ status; } ;
struct TYPE_14__ {int s_device; int s_default; } ;
struct TYPE_13__ {char* filename; } ;
struct TYPE_12__ {TYPE_1__* entries; } ;
struct TYPE_10__ {scalar_t__ boot; } ;
struct TYPE_11__ {TYPE_2__ cartridge; } ;
struct TYPE_9__ {char* filepath; } ;


 scalar_t__ CD_OPEN ;
 int GUI_MsgBoxClose () ;
 int GUI_MsgBoxOpen (char*,char*,int) ;
 int GUI_WaitPrompt (char*,char*) ;
 int MAXPATHLEN ;
 int MountDVD () ;
 scalar_t__ NO_DISC ;
 int SYSTEM_GG ;
 int SYSTEM_MCD ;
 int SYSTEM_SG ;
 int SYSTEM_SMS ;
 size_t TYPE_DVD ;
 int TYPE_RECENT ;
 TYPE_8__ cdc ;
 TYPE_7__ cdd ;
 int cdd_load (char*,char*) ;
 TYPE_6__ config ;
 int deviceType ;
 char* fileDir ;
 TYPE_5__* filelist ;
 int getrominfo (char*) ;
 TYPE_4__ history ;
 int history_add_file (char*,char*,int) ;
 int load_rom (char*) ;
 char* rom_filename ;
 int romtype ;
 char** rootdir ;
 TYPE_3__ scd ;
 int slot_autosave (int ,int ) ;
 int sprintf (char*,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int system_hw ;

int LoadFile(int selection)
{
  int size, cd_mode1, filetype;
  char filename[MAXPATHLEN];


  char *filepath = (deviceType == TYPE_RECENT) ? history.entries[selection].filepath : fileDir;


  sprintf(filename, "%s%s", filepath, filelist[selection].filename);


  if (!strncmp(filepath, rootdir[TYPE_DVD], strlen(rootdir[TYPE_DVD])))
  {

    struct stat filestat;
    if(stat(filename, &filestat) != 0)
    {

      if (!MountDVD()) return 0;
    }
  }


  GUI_MsgBoxOpen("Information", "Loading game...", 1);


  size = cd_mode1 = 0;


  if ((system_hw == SYSTEM_MCD) && (cdd.status == CD_OPEN))
  {

    size = cdd_load(filename, (char *)(cdc.ram));


    if (scd.cartridge.boot)
    {

      cd_mode1 = size;
    }
    else
    {

      getrominfo((char *)(cdc.ram));
    }
  }


  if (!size)
  {

    cdd.status = NO_DISC;


    size = load_rom(filename);
  }

  if (size > 0)
  {

    if (cd_mode1)
    {

      filetype = 1;
    }
    else
    {

      slot_autosave(config.s_default,config.s_device);


      if (romtype & SYSTEM_SMS)
      {

        filetype = 2;
        sprintf(rom_filename,"ms/%s",filelist[selection].filename);
      }
      else if (romtype & SYSTEM_GG)
      {

        filetype = 3;
        sprintf(rom_filename,"gg/%s",filelist[selection].filename);
      }
      else if (romtype == SYSTEM_SG)
      {

        filetype = 4;
        sprintf(rom_filename,"sg/%s",filelist[selection].filename);
      }
      else if (romtype == SYSTEM_MCD)
      {

        filetype = 1;
        sprintf(rom_filename,"cd/%s",filelist[selection].filename);
      }
      else
      {

        filetype = 0;
        sprintf(rom_filename,"md/%s",filelist[selection].filename);
      }


      int i = strlen(rom_filename) - 1;
      while ((i > 0) && (rom_filename[i] != '.')) i--;
      if (i > 0) rom_filename[i] = 0;
    }


    history_add_file(filepath, filelist[selection].filename, filetype);


    if (deviceType == TYPE_RECENT) deviceType = -1;


    GUI_MsgBoxClose();


    return 1;
  }

  GUI_WaitPrompt("Error", "Unable to load game");
  return 0;
}
