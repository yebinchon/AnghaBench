
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {char* payload; int allocSize; int * pMeterInfo; } ;
typedef TYPE_1__ SSqlCmd ;


 int assert (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int tscFreeSqlCmdData (TYPE_1__*) ;

void tscCleanSqlCmd(SSqlCmd* pCmd) {
  tscFreeSqlCmdData(pCmd);

  assert(pCmd->pMeterInfo == ((void*)0));

  uint32_t allocSize = pCmd->allocSize;
  char* allocPtr = pCmd->payload;

  memset(pCmd, 0, sizeof(SSqlCmd));


  pCmd->allocSize = allocSize;
  pCmd->payload = allocPtr;
}
