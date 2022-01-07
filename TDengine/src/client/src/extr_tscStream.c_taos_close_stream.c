
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* signature; } ;
struct TYPE_9__ {int * pSql; int pTimer; } ;
typedef int TAOS_STREAM ;
typedef TYPE_1__ SSqlStream ;
typedef TYPE_2__ SSqlObj ;


 scalar_t__ atomic_exchange_ptr (int **,int ) ;
 int taosTmrStopA (int *) ;
 int tfree (TYPE_1__*) ;
 int tscFreeSqlObj (TYPE_2__*) ;
 int tscRemoveFromStreamList (TYPE_1__*,TYPE_2__*) ;
 int tscTrace (char*,TYPE_2__*,TYPE_1__*) ;

void taos_close_stream(TAOS_STREAM *handle) {
  SSqlStream *pStream = (SSqlStream *)handle;

  SSqlObj *pSql = (SSqlObj *)atomic_exchange_ptr(&pStream->pSql, 0);
  if (pSql == ((void*)0)) {
    return;
  }





  if (pSql->signature == pSql) {
    tscRemoveFromStreamList(pStream, pSql);

    taosTmrStopA(&(pStream->pTimer));
    tscFreeSqlObj(pSql);
    pStream->pSql = ((void*)0);

    tscTrace("%p stream:%p is closed", pSql, pStream);
    tfree(pStream);
  }
}
