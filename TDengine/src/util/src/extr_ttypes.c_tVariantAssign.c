
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nType; int nLen; int pz; } ;
typedef TYPE_1__ tVariant ;
typedef int int32_t ;


 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 scalar_t__ TSDB_DATA_TYPE_NCHAR ;
 int TSDB_NCHAR_SIZE ;
 int calloc (int,int) ;
 int memcpy (int ,int ,int) ;

void tVariantAssign(tVariant *pDst, tVariant *pSrc) {
  if (pSrc == ((void*)0) || pDst == ((void*)0)) return;

  *pDst = *pSrc;

  if (pSrc->nType == TSDB_DATA_TYPE_BINARY || pSrc->nType == TSDB_DATA_TYPE_NCHAR) {
    int32_t len = pSrc->nLen + 1;
    if (pSrc->nType == TSDB_DATA_TYPE_NCHAR) {
      len = len * TSDB_NCHAR_SIZE;
    }

    pDst->pz = calloc(1, len);
    memcpy(pDst->pz, pSrc->pz, len);
  }
}
