
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCK_EX ;
 int LOCK_NB ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int dError (char*,char*,int) ;
 int exit (int ) ;
 int flock (int,int) ;
 int open (char*,int,int) ;
 int sprintf (char*,char*,char const*) ;

void dnodeCheckDbRunning(const char* dir) {
  char filepath[256] = {0};
  sprintf(filepath, "%s/.running", dir);
  int fd = open(filepath, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
  int ret = flock(fd, LOCK_EX | LOCK_NB);
  if (ret != 0) {
    dError("failed to lock file:%s ret:%d, database may be running, quit", filepath, ret);
    exit(0);
  }
}
