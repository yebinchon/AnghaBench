
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int order; } ;
struct TYPE_5__ {TYPE_1__ cur; } ;
typedef TYPE_2__ STSBuf ;



void tsBufSetTraverseOrder(STSBuf* pTSBuf, int32_t order) {
  if (pTSBuf == ((void*)0)) {
    return;
  }

  pTSBuf->cur.order = order;
}
