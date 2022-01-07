
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int realchecksum; } ;


 int CARD_Delete (int,char*) ;
 int CARD_Init (char*,char*) ;
 int CARD_Unmount (int) ;
 int CARD_WORKAREA ;
 scalar_t__ CardMount (int) ;
 char* DEFAULT_PATH ;
 int MAXPATHLEN ;
 int SysArea ;
 int memset (int *,int ,int ) ;
 int remove (char*) ;
 char* rom_filename ;
 TYPE_1__ rominfo ;
 int sprintf (char*,char*,...) ;

int slot_delete(int slot, int device)
{
  char filename[MAXPATHLEN];
  int ret = 0;

  if (!device)
  {

    if (slot > 0)
    {

      sprintf(filename,"%s/saves/%s__%d.png", DEFAULT_PATH, rom_filename, slot - 1);
      remove(filename);

      sprintf (filename,"%s/saves/%s.gp%d", DEFAULT_PATH, rom_filename, slot - 1);
    }
    else
    {
      sprintf (filename,"%s/saves/%s.srm", DEFAULT_PATH, rom_filename);
    }


    ret = remove(filename);
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

      ret = CARD_Delete(device,filename);
      CARD_Unmount(device);
    }
  }

  return ret;
}
