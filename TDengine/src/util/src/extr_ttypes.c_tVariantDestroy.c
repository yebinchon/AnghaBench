
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nType; scalar_t__ nLen; int * pz; } ;
typedef TYPE_1__ tVariant ;


 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 int free (int *) ;

void tVariantDestroy(tVariant *pVar) {
  if (pVar == ((void*)0)) return;

  if ((pVar->nType == TSDB_DATA_TYPE_BINARY || pVar->nType == TSDB_DATA_TYPE_NCHAR) && pVar->nLen > 0) {
    free(pVar->pz);
    pVar->pz = ((void*)0);
    pVar->nLen = 0;
  }
}
