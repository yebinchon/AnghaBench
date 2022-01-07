
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ mseconds; scalar_t__ stime; char* name; int taos; int * result; scalar_t__ lastKey; struct TYPE_2__* signature; } ;
typedef int TAOS_SUB ;
typedef scalar_t__* TAOS_ROW ;
typedef TYPE_1__ SSub ;


 int sprintf (char*,char*,char*,scalar_t__) ;
 void* taosGetTimestampMs () ;
 int taosMsleep (int) ;
 int taos_errstr (int ) ;
 scalar_t__* taos_fetch_row (int *) ;
 int taos_free_result (int *) ;
 scalar_t__ taos_query (int ,char*) ;
 int * taos_use_result (int ) ;
 int tscTrace (char*,int ) ;

TAOS_ROW taos_consume(TAOS_SUB *tsub) {
  SSub * pSub = (SSub *)tsub;
  TAOS_ROW row;
  char qstr[256];

  if (pSub == ((void*)0)) return ((void*)0);
  if (pSub->signature != pSub) return ((void*)0);

  while (1) {
    if (pSub->result != ((void*)0)) {
      row = taos_fetch_row(pSub->result);
      if (row != ((void*)0)) {
        pSub->lastKey = *((uint64_t *)row[0]);
        return row;
      }

      taos_free_result(pSub->result);
      pSub->result = ((void*)0);
      uint64_t etime = taosGetTimestampMs();
      int64_t mseconds = pSub->mseconds - etime + pSub->stime;
      if (mseconds < 0) mseconds = 0;
      taosMsleep((int)mseconds);
    }

    pSub->stime = taosGetTimestampMs();

    sprintf(qstr, "select * from %s where _c0 > %lld order by _c0 asc", pSub->name, pSub->lastKey);
    if (taos_query(pSub->taos, qstr)) {
      tscTrace("failed to select, reason:%s", taos_errstr(pSub->taos));
      return ((void*)0);
    }

    pSub->result = taos_use_result(pSub->taos);

    if (pSub->result == ((void*)0)) {
      tscTrace("failed to get result, reason:%s", taos_errstr(pSub->taos));
      return ((void*)0);
    }
  }

  return ((void*)0);
}
