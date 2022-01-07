
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ** lastdir; } ;
struct TYPE_7__ {char* filename; scalar_t__ flags; } ;
struct TYPE_6__ {TYPE_1__* entries; } ;
struct TYPE_5__ {scalar_t__* filepath; int filename; } ;
typedef int DIR ;


 int ClearSelector (int) ;
 int GUI_WaitPrompt (char*,char*) ;
 int MAXJOLIET ;
 int MountDVD () ;
 int NUM_HISTORY_ENTRIES ;
 int ParseDirectory () ;
 int TYPE_DVD ;
 int TYPE_RECENT ;
 int closedir (int *) ;
 TYPE_4__ config ;
 int deviceType ;
 int fileDir ;
 int fileType ;
 TYPE_3__* filelist ;
 TYPE_2__ history ;
 int * opendir (int ) ;
 int * rootdir ;
 int strcpy (int ,int ) ;
 int strncpy (char*,int ,int) ;

int OpenDirectory(int device, int type)
{
  int max = 0;

  if (device == TYPE_RECENT)
  {

    int i;
    for(i=0; i < NUM_HISTORY_ENTRIES; i++)
    {
      if(history.entries[i].filepath[0] > 0)
      {
        filelist[i].flags = 0;
        strncpy(filelist[i].filename,history.entries[i].filename, MAXJOLIET-1);
        filelist[i].filename[MAXJOLIET-1] = '\0';
        max++;
      }
      else
      {

        break;
      }
    }
  }
  else
  {

    if (device == TYPE_DVD)
    {

      DIR *dir = opendir(rootdir[TYPE_DVD]);
      if (dir == ((void*)0))
      {

        if (!MountDVD()) return 0;
        deviceType = -1;
      }
      else
      {
        closedir(dir);
      }
    }


    fileDir = config.lastdir[type][device];
    max = ParseDirectory();
    if (max <= 0)
    {

      strcpy(fileDir, rootdir[device]);
      max = ParseDirectory();
      if (max < 0)
      {
        GUI_WaitPrompt("Error","Unable to open directory !");
        return 0;
      }
      deviceType = -1;
    }
  }

  if (max == 0)
  {
    GUI_WaitPrompt("Error","No files found !");
    return 0;
  }


  if ((device != deviceType) || (type != fileType))
  {

    deviceType = device;
    fileType = type;


    ClearSelector(max);
  }

  return 1;
}
