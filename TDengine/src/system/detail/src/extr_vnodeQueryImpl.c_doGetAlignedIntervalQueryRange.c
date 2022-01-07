
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ skey; scalar_t__ lastKey; scalar_t__ ekey; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SQuery ;


 scalar_t__ QUERY_IS_ASC_QUERY (TYPE_1__*) ;
 int assert (int) ;
 int doGetAlignedIntervalQueryRangeImpl (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void doGetAlignedIntervalQueryRange(SQuery *pQuery, TSKEY key, TSKEY skey, TSKEY ekey) {
  TSKEY skey1, ekey1;

  TSKEY skey2 = (skey < ekey) ? skey : ekey;
  TSKEY ekey2 = (skey < ekey) ? ekey : skey;

  doGetAlignedIntervalQueryRangeImpl(pQuery, key, skey2, ekey2, &skey1, &ekey1);

  if (QUERY_IS_ASC_QUERY(pQuery)) {
    pQuery->skey = skey1;
    pQuery->ekey = ekey1;
    assert(pQuery->skey <= pQuery->ekey);
  } else {
    pQuery->skey = ekey1;
    pQuery->ekey = skey1;
    assert(pQuery->skey >= pQuery->ekey);
  }

  pQuery->lastKey = pQuery->skey;
}
