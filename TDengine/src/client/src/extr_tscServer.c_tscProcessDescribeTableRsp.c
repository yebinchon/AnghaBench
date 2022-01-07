
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_9__ {TYPE_1__* pMeterMeta; } ;
struct TYPE_8__ {int cmd; } ;
struct TYPE_7__ {scalar_t__ numOfTags; scalar_t__ numOfColumns; } ;
typedef TYPE_2__ SSqlObj ;
typedef int SSqlCmd ;
typedef TYPE_3__ SMeterMetaInfo ;


 TYPE_3__* tscGetMeterMetaInfo (int *,int ) ;
 int tscLocalResultCommonBuilder (TYPE_2__*,scalar_t__) ;

int tscProcessDescribeTableRsp(SSqlObj *pSql) {
  SSqlCmd * pCmd = &pSql->cmd;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  int32_t numOfRes = pMeterMetaInfo->pMeterMeta->numOfColumns + pMeterMetaInfo->pMeterMeta->numOfTags;

  return tscLocalResultCommonBuilder(pSql, numOfRes);
}
