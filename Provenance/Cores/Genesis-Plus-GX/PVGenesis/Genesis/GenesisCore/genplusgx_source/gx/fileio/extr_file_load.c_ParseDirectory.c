
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {char* d_name; scalar_t__ d_type; } ;
struct TYPE_4__ {int flags; int filename; } ;
typedef int FILEENTRIES ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int FileSortCallback ;
 int MAXFILES ;
 int closedir (int *) ;
 int fileDir ;
 TYPE_1__* filelist ;
 int memset (TYPE_1__*,int ,int) ;
 int * opendir (int ) ;
 int qsort (TYPE_1__*,int,int,int ) ;
 struct dirent* readdir (int *) ;
 int sprintf (int ,char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

int ParseDirectory(void)
{
  int nbfiles = 0;


  DIR *dir = opendir(fileDir);
  if (dir == ((void*)0))
  {
    return -1;
  }

  struct dirent *entry = readdir(dir);


  while ((entry != ((void*)0))&& (nbfiles < MAXFILES))
  {

    if ((entry->d_name[0] != '.')
       && strncasecmp(".wav", &entry->d_name[strlen(entry->d_name) - 4], 4)
       && strncasecmp(".ogg", &entry->d_name[strlen(entry->d_name) - 4], 4)
       && strncasecmp(".mp3", &entry->d_name[strlen(entry->d_name) - 4], 4))
    {
      memset(&filelist[nbfiles], 0, sizeof (FILEENTRIES));
      sprintf(filelist[nbfiles].filename,"%s",entry->d_name);
      if (entry->d_type == DT_DIR)
      {
        filelist[nbfiles].flags = 1;
      }
      nbfiles++;
    }


    entry = readdir(dir);
  }


  closedir(dir);


  qsort(filelist, nbfiles, sizeof(FILEENTRIES), FileSortCallback);

  return nbfiles;
}
