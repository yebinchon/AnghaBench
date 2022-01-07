
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 char* dataDir ;
 int dnodeCheckDbRunning (char*) ;
 char* mgmtDirectory ;
 int mkdir (char*,int) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,char*) ;
 char* tsDirectory ;

int taosCreateTierDirectory() {
  struct stat dirstat;
  strcpy(tsDirectory, dataDir);
  if (stat(dataDir, &dirstat) < 0) {
    mkdir(dataDir, 0755);
  }

  char fileName[128];

  sprintf(fileName, "%s/tsdb", tsDirectory);
  mkdir(fileName, 0755);

  sprintf(fileName, "%s/data", tsDirectory);
  mkdir(fileName, 0755);

  sprintf(mgmtDirectory, "%s/mgmt", tsDirectory);
  sprintf(tsDirectory, "%s/tsdb", dataDir);
  dnodeCheckDbRunning(dataDir);

  return 0;
}
