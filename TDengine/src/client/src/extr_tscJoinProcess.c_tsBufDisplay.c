
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_9__ {int order; } ;
struct TYPE_11__ {int numOfVnodes; TYPE_1__ cur; } ;
struct TYPE_10__ {int vnode; int ts; int tag; } ;
typedef TYPE_2__ STSElem ;
typedef TYPE_3__ STSBuf ;


 int TSQL_SO_ASC ;
 int printf (char*,...) ;
 TYPE_2__ tsBufGetElem (TYPE_3__*) ;
 scalar_t__ tsBufNextPos (TYPE_3__*) ;
 int tsBufResetPos (TYPE_3__*) ;

void tsBufDisplay(STSBuf* pTSBuf) {
  printf("-------start of ts comp file-------\n");
  printf("number of vnode:%d\n", pTSBuf->numOfVnodes);

  int32_t old = pTSBuf->cur.order;
  pTSBuf->cur.order = TSQL_SO_ASC;

  tsBufResetPos(pTSBuf);

  while (tsBufNextPos(pTSBuf)) {
    STSElem elem = tsBufGetElem(pTSBuf);
    printf("%d-%lld-%lld\n", elem.vnode, elem.tag, elem.ts);
  }

  pTSBuf->cur.order = old;
  printf("-------end of ts comp file-------\n");
}
