
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_4__ {int maxSessions; } ;
struct TYPE_5__ {scalar_t__ meterIndex; TYPE_1__ cfg; } ;
typedef int TSCKSUM ;
typedef int SMeterObjHeader ;
typedef int FILE ;


 int SEEK_SET ;
 int TSDB_FILENAME_LEN ;
 int TSDB_FILE_HEADER_LEN ;
 scalar_t__ calloc (int,int) ;
 int dError (char*,int,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;
 int fwrite (scalar_t__,int,int,int *) ;
 int sprintf (char*,char*,char*,int,int) ;
 int taosCalcChecksumAppend (int ,int *,int) ;
 int tfree (scalar_t__) ;
 char* tsDirectory ;
 int vnodeCreateFileHeader (int *) ;
 TYPE_2__* vnodeList ;
 int vnodeUpdateVnodeFileHeader (int *,TYPE_2__*) ;

int vnodeCreateMeterObjFile(int vnode) {
  FILE * fp;
  char fileName[TSDB_FILENAME_LEN];
  int32_t size;


  sprintf(fileName, "%s/vnode%d/meterObj.v%d", tsDirectory, vnode, vnode);
  fp = fopen(fileName, "w+");
  if (fp == ((void*)0)) {
    dError("failed to create vnode:%d file:%s", vnode, fileName);
    return -1;
  } else {
    vnodeCreateFileHeader(fp);
    vnodeUpdateVnodeFileHeader(fp, vnodeList + vnode);
    fseek(fp, TSDB_FILE_HEADER_LEN, SEEK_SET);

    size = sizeof(SMeterObjHeader) * vnodeList[vnode].cfg.maxSessions + sizeof(TSCKSUM);
    tfree(vnodeList[vnode].meterIndex);
    vnodeList[vnode].meterIndex = calloc(1, size);
    taosCalcChecksumAppend(0, (uint8_t *)(vnodeList[vnode].meterIndex), size);
    fwrite(vnodeList[vnode].meterIndex, size, 1, fp);

    fclose(fp);
  }

  return 0;
}
