
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;


 int LOG_FILE_NAME_LEN ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SEEK_SET ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 TYPE_1__* logHandle ;
 int lseek (int,int ,int ) ;
 int open (char*,int,int) ;
 scalar_t__ openInProgress ;
 int pPrint (char*) ;
 int sprintf (char*,char*,char*,int) ;
 int taosCloseLogByFd (int) ;
 int taosLockFile (int) ;
 int taosLogFlag ;
 scalar_t__ taosLogLines ;
 char* taosLogName ;
 int umask (int ) ;

void *taosThreadToOpenNewFile(void *param) {
  char name[LOG_FILE_NAME_LEN];

  taosLogFlag ^= 1;
  taosLogLines = 0;
  sprintf(name, "%s.%d", taosLogName, taosLogFlag);

  umask(0);

  int fd = open(name, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
  taosLockFile(fd);
  lseek(fd, 0, SEEK_SET);

  int oldFd = logHandle->fd;
  logHandle->fd = fd;
  taosLogLines = 0;
  openInProgress = 0;
  pPrint("new log file is opened!!!");

  taosCloseLogByFd(oldFd);
  return ((void*)0);
}
