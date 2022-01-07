
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {TYPE_1__* pCreateTableInfo; int sqlType; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ SSqlInfo ;
typedef int SSQLToken ;



void setSQLInfo(SSqlInfo *pInfo, void *pSqlExprInfo, SSQLToken *pMeterName, int32_t type) {
  pInfo->sqlType = type;
  pInfo->pCreateTableInfo = pSqlExprInfo;

  if (pMeterName != ((void*)0)) {
    pInfo->pCreateTableInfo->name = *pMeterName;
  }
}
