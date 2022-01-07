
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cfg; int status; } ;
typedef int SVnodeCfg ;
typedef int SVPeerDesc ;


 int TSDB_CODE_VG_COMMITLOG_INIT_FAILED ;
 int TSDB_CODE_VG_INIT_FAILED ;
 int TSDB_STATUS_CREATING ;
 int mkdir (char*,int) ;
 int sprintf (char*,char*,char*,int) ;
 char* tsDirectory ;
 scalar_t__ vnodeCreateMeterObjFile (int) ;
 scalar_t__ vnodeInitStoreVnode (int) ;
 TYPE_1__* vnodeList ;
 int vnodeOpenVnode (int) ;
 scalar_t__ vnodeSaveVnodeCfg (int,int *,int *) ;

int vnodeCreateVnode(int vnode, SVnodeCfg *pCfg, SVPeerDesc *pDesc) {
  char fileName[128];

  vnodeList[vnode].status = TSDB_STATUS_CREATING;

  sprintf(fileName, "%s/vnode%d", tsDirectory, vnode);
  mkdir(fileName, 0755);

  sprintf(fileName, "%s/vnode%d/db", tsDirectory, vnode);
  mkdir(fileName, 0755);

  vnodeList[vnode].cfg = *pCfg;
  if (vnodeCreateMeterObjFile(vnode) != 0) {
    return TSDB_CODE_VG_INIT_FAILED;
  }

  if (vnodeSaveVnodeCfg(vnode, pCfg, pDesc) != 0) {
    return TSDB_CODE_VG_INIT_FAILED;
  }

  if (vnodeInitStoreVnode(vnode) != 0) {
    return TSDB_CODE_VG_COMMITLOG_INIT_FAILED;
  }

  return vnodeOpenVnode(vnode);
}
