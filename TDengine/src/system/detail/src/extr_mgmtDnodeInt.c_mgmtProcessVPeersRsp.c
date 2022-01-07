
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ vgStatus; } ;
struct TYPE_7__ {int privateIp; } ;
struct TYPE_6__ {scalar_t__ code; int more; } ;
typedef TYPE_1__ STaosRsp ;
typedef TYPE_2__ SDnodeObj ;
typedef TYPE_3__ SDbObj ;


 scalar_t__ TSDB_CODE_VG_COMMITLOG_INIT_FAILED ;
 scalar_t__ TSDB_VG_STATUS_COMMITLOG_INIT_FAILED ;
 scalar_t__ TSDB_VG_STATUS_INIT_FAILED ;
 scalar_t__ TSDB_VG_STATUS_IN_PROGRESS ;
 scalar_t__ TSDB_VG_STATUS_READY ;
 int mError (char*,int ,scalar_t__,...) ;
 int mTrace (char*,int ,int ,...) ;
 TYPE_3__* mgmtGetDb (int ) ;
 int taosIpStr (int ) ;

int mgmtProcessVPeersRsp(char *msg, int msgLen, SDnodeObj *pObj) {
  STaosRsp *pRsp = (STaosRsp *)msg;

  SDbObj *pDb = mgmtGetDb(pRsp->more);
  if (!pDb) {
    mError("dnode:%s, db not find, code:%d", taosIpStr(pObj->privateIp), pRsp->code);
    return 0;
  }

  if (pDb->vgStatus != TSDB_VG_STATUS_IN_PROGRESS) {
    mTrace("dnode:%s, db:%s vpeer rsp already disposed, code:%d", taosIpStr(pObj->privateIp), pRsp->more, pRsp->code);
    return 0;
  }

  if (pRsp->code == 0) {
    pDb->vgStatus = TSDB_VG_STATUS_READY;
    mTrace("dnode:%s, db:%s vgroup is created in dnode", taosIpStr(pObj->privateIp), pRsp->more);
    return 0;
  }

  if (pRsp->code == TSDB_CODE_VG_COMMITLOG_INIT_FAILED) {
    pDb->vgStatus = TSDB_VG_STATUS_COMMITLOG_INIT_FAILED;
  } else {
    pDb->vgStatus = TSDB_VG_STATUS_INIT_FAILED;
  }
  mError("dnode:%s, db:%s vgroup create failed, code:%d", taosIpStr(pObj->privateIp), pRsp->more, pRsp->code);

  return 0;
}
