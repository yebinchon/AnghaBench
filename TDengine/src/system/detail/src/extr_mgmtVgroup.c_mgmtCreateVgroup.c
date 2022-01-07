
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int replications; } ;
struct TYPE_16__ {int name; int vgTimer; int vgStatus; TYPE_1__ cfg; } ;
struct TYPE_15__ {int numOfVnodes; TYPE_2__* vnodeGid; int vgId; int createdTime; int dbName; } ;
struct TYPE_14__ {int vnode; int ip; } ;
typedef TYPE_3__ SVgObj ;
typedef TYPE_4__ SDbObj ;


 int TSDB_VG_STATUS_FULL ;
 int free (TYPE_3__*) ;
 int mError (char*) ;
 int mTrace (char*,int ,int ,int) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ mgmtAllocVnodes (TYPE_3__*) ;
 int mgmtProcessVgTimer ;
 int mgmtSendVPeersMsg (TYPE_3__*) ;
 int mgmtTmr ;
 int sdbInsertRow (int ,TYPE_3__*,int ) ;
 int strcpy (int ,int ) ;
 int taosGetTimestampMs () ;
 int taosIpStr (int ) ;
 int taosTmrReset (int ,int,TYPE_4__*,int ,int *) ;
 int vgSdb ;

SVgObj *mgmtCreateVgroup(SDbObj *pDb) {
  SVgObj *pVgroup;
  int size;

  size = sizeof(SVgObj);
  pVgroup = (SVgObj *)malloc(size);
  memset(pVgroup, 0, size);
  strcpy(pVgroup->dbName, pDb->name);
  pVgroup->numOfVnodes = pDb->cfg.replications;
  pVgroup->createdTime = taosGetTimestampMs();


  if (mgmtAllocVnodes(pVgroup) != 0) {
    mError("no enough free dnode");
    free(pVgroup);
    pDb->vgStatus = TSDB_VG_STATUS_FULL;
    taosTmrReset(mgmtProcessVgTimer, 5000, pDb, mgmtTmr, &pDb->vgTimer);
    return ((void*)0);
  }

  sdbInsertRow(vgSdb, pVgroup, 0);

  mTrace("vgroup:%d, db:%s replica:%d is created", pVgroup->vgId, pDb->name, pVgroup->numOfVnodes);
  for (int i = 0; i < pVgroup->numOfVnodes; ++i)
    mTrace("dnode:%s, vgroup:%d, vnode:%d is created", taosIpStr(pVgroup->vnodeGid[i].ip), pVgroup->vgId, pVgroup->vnodeGid[i].vnode);

  mgmtSendVPeersMsg(pVgroup);

  return pVgroup;
}
