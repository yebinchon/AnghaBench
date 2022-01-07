
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_FILENAME_LEN ;
 int dTrace (char*,int,int,char*,char*,char*,char*) ;
 scalar_t__ symlink (char*,char*) ;
 int vnodeCreateDataDirIfNeeded (int,char*) ;
 char* vnodeGetDataDir (int,int) ;
 int vnodeGetHeadDataDname (char*,char*,char*,int,int,char*) ;
 int vnodeGetHeadDataLname (char*,char*,char*,int,int) ;

int vnodeCreateHeadDataFile(int vnode, int fileId, char *headName, char *dataName, char *lastName) {
  char dHeadName[TSDB_FILENAME_LEN];
  char dDataName[TSDB_FILENAME_LEN];
  char dLastName[TSDB_FILENAME_LEN];

  char *path = vnodeGetDataDir(vnode, fileId);
  if (path == ((void*)0)) {
    return -1;
  }

  vnodeCreateDataDirIfNeeded(vnode, path);

  vnodeGetHeadDataLname(headName, dataName, lastName, vnode, fileId);
  vnodeGetHeadDataDname(dHeadName, dDataName, dLastName, vnode, fileId, path);
  if (symlink(dHeadName, headName) != 0) return -1;
  if (symlink(dDataName, dataName) != 0) return -1;
  if (symlink(dLastName, lastName) != 0) return -1;

  dTrace(
      "vid:%d, fileId:%d, empty header file:%s dataFile:%s lastFile:%s on "
      "disk:%s is created ",
      vnode, fileId, headName, dataName, lastName, path);

  return 0;
}
