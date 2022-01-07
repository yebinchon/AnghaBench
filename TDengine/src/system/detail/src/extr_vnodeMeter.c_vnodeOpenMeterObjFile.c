
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 int TSDB_FILENAME_LEN ;
 int dError (char*,char*,...) ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int sprintf (char*,char*,char*,int,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;
 char* tsDirectory ;
 scalar_t__ vnodeCheckFileIntegrity (int *) ;

FILE *vnodeOpenMeterObjFile(int vnode) {
  FILE * fp;
  char fileName[TSDB_FILENAME_LEN];
  struct stat fstat;


  sprintf(fileName, "%s/vnode%d", tsDirectory, vnode);
  if (stat(fileName, &fstat) < 0) return ((void*)0);

  sprintf(fileName, "%s/vnode%d/meterObj.v%d", tsDirectory, vnode, vnode);
  if (stat(fileName, &fstat) < 0) return ((void*)0);

  fp = fopen(fileName, "r+");
  if (fp != ((void*)0)) {
    if (vnodeCheckFileIntegrity(fp) < 0) {
      dError("file:%s is corrupted, need to restore it first", fileName);
      fclose(fp);


      exit(1);
    }
  } else {
    dError("failed to open %s, reason:%s", fileName, strerror(errno));
  }

  return fp;
}
