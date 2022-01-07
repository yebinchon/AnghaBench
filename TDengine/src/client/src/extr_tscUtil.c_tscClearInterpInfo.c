
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defaultVal; int interpoType; } ;
typedef TYPE_1__ SSqlCmd ;


 int TSDB_INTERPO_NONE ;
 int memset (int ,int ,int) ;
 int tscIsPointInterpQuery (TYPE_1__*) ;

void tscClearInterpInfo(SSqlCmd* pCmd) {
  if (!tscIsPointInterpQuery(pCmd)) {
    return;
  }

  pCmd->interpoType = TSDB_INTERPO_NONE;
  memset(pCmd->defaultVal, 0, sizeof(pCmd->defaultVal));
}
