
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tDCLSQL ;
typedef int int32_t ;
struct TYPE_11__ {int acctOpt; } ;
struct TYPE_10__ {scalar_t__ n; } ;
struct TYPE_9__ {TYPE_3__* pDCLInfo; int sqlType; } ;
typedef TYPE_1__ SSqlInfo ;
typedef TYPE_2__ SSQLToken ;
typedef int SCreateAcctSQL ;


 TYPE_3__* calloc (int,int) ;
 int tTokenListAppend (TYPE_3__*,TYPE_2__*) ;

void setCreateAcctSQL(SSqlInfo *pInfo, int32_t type, SSQLToken *pName, SSQLToken *pPwd, SCreateAcctSQL *pAcctInfo) {
  pInfo->sqlType = type;
  if (pInfo->pDCLInfo == ((void*)0)) {
    pInfo->pDCLInfo = calloc(1, sizeof(tDCLSQL));
  }

  pInfo->pDCLInfo->acctOpt = *pAcctInfo;

  tTokenListAppend(pInfo->pDCLInfo, pName);

  if (pPwd->n > 0) {
    tTokenListAppend(pInfo->pDCLInfo, pPwd);
  }
}
