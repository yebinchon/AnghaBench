
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int cmd; TYPE_1__* pTscObj; } ;
struct TYPE_6__ {int db; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SMeterMetaInfo ;


 int strcpy (int ,int ) ;
 TYPE_3__* tscGetMeterMetaInfo (int *,int ) ;

int tscProcessUseDbRsp(SSqlObj *pSql) {
  STscObj * pObj = pSql->pTscObj;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(&pSql->cmd, 0);

  strcpy(pObj->db, pMeterMetaInfo->name);
  return 0;
}
