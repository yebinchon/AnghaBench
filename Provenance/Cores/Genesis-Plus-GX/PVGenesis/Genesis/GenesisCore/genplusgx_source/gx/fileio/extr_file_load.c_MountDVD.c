
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* isInserted ) () ;} ;


 int GUI_MsgBoxClose () ;
 int GUI_MsgBoxOpen (char*,char*,int) ;
 int GUI_WaitPrompt (char*,char*) ;
 int ISO9660_Mount (char*,TYPE_1__*) ;
 int ISO9660_Unmount (char*) ;
 TYPE_1__* dvd ;
 int dvd_mounted ;
 int stub1 () ;

__attribute__((used)) static int MountDVD(void)
{
  GUI_MsgBoxOpen("Information", "Mounting DVD ...",1);


  if (dvd_mounted)
  {

    ISO9660_Unmount("dvd:");
    dvd_mounted = 0;
  }


  if(!dvd->isInserted())
  {
    GUI_WaitPrompt("Error","No Disc inserted !");
    return 0;
  }


  if(!ISO9660_Mount("dvd",dvd))
  {
    GUI_WaitPrompt("Error","Disc can not be read !");
    return 0;
  }


  dvd_mounted = 1;

  GUI_MsgBoxClose();
  return 1;
}
