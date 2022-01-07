
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nAggTimeInterval; } ;
typedef int TSKEY ;
typedef TYPE_1__ SQuery ;


 int doGetAlignedIntervalQueryRange (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void getAlignedIntervalQueryRange(SQuery *pQuery, TSKEY keyInData, TSKEY skey, TSKEY ekey) {
  if (pQuery->nAggTimeInterval == 0) {
    return;
  }

  doGetAlignedIntervalQueryRange(pQuery, keyInData, skey, ekey);
}
