
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ n; } ;
struct TYPE_8__ {TYPE_1__* pCreateTableInfo; } ;
struct TYPE_7__ {int existCheck; TYPE_3__ name; } ;
typedef TYPE_2__ SSqlInfo ;
typedef TYPE_3__ SSQLToken ;



void setCreatedMeterName(SSqlInfo *pInfo, SSQLToken *pMeterName, SSQLToken *pIfNotExists) {
  pInfo->pCreateTableInfo->name = *pMeterName;
  pInfo->pCreateTableInfo->existCheck = (pIfNotExists->n != 0);
}
