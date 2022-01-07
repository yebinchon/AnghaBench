
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pTscObj; } ;
struct TYPE_4__ {char* acctId; } ;
typedef TYPE_2__ SSqlObj ;



__attribute__((used)) static char* getAccountId(SSqlObj* pSql) { return pSql->pTscObj->acctId; }
