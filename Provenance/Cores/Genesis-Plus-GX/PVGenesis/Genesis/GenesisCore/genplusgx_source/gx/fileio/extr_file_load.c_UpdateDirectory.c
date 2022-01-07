
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 size_t TYPE_RECENT ;
 size_t deviceType ;
 char* fileDir ;
 int * rootdir ;
 int sprintf (char*,char*,char*,char*) ;
 int strcmp (int ,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 char* strtok (char*,char*) ;

int UpdateDirectory(bool go_up, char *dirname)
{

  if (go_up)
  {

    if (deviceType == TYPE_RECENT) return 0;


    if (!strcmp(rootdir[deviceType], (const char *)fileDir)) return 0;

    int size=0;
    char temp[MAXPATHLEN];


    strcpy(temp, fileDir);
    char *test= strtok(temp,"/");
    while (test != ((void*)0))
    {
      size = strlen(test);
      strncpy(dirname,test,size);
      dirname[size] = 0;
      test = strtok(((void*)0),"/");
    }


    size = strlen(fileDir) - size;
    fileDir[size - 1] = 0;
  }
  else
  {

    sprintf(fileDir, "%s%s/",fileDir, dirname);
  }

  return 1;
}
