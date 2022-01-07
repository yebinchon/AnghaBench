
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tDCLSQL ;
typedef int int32_t ;
struct TYPE_8__ {int dbname; } ;
struct TYPE_9__ {TYPE_2__ dbOpt; } ;
struct TYPE_7__ {TYPE_3__* pDCLInfo; int sqlType; } ;
typedef TYPE_1__ SSqlInfo ;
typedef int SSQLToken ;
typedef TYPE_2__ SCreateDBInfo ;


 TYPE_3__* calloc (int,int) ;
 int tTokenListAppend (TYPE_3__*,int *) ;

void setCreateDBSQL(SSqlInfo *pInfo, int32_t type, SSQLToken *pToken, SCreateDBInfo *pDB, SSQLToken *pIgExists) {
  pInfo->sqlType = type;
  if (pInfo->pDCLInfo == ((void*)0)) {
    pInfo->pDCLInfo = calloc(1, sizeof(tDCLSQL));
  }

  pInfo->pDCLInfo->dbOpt = *pDB;
  pInfo->pDCLInfo->dbOpt.dbname = *pToken;

  tTokenListAppend(pInfo->pDCLInfo, pIgExists);
}
