
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int msgHdr; int * signature; int port; int ip; TYPE_1__* pConn; int timer; } ;
struct TYPE_5__ {int hash; } ;
typedef TYPE_2__ SUdpBuf ;


 int free (TYPE_2__*) ;
 int taosDeleteIpHash (int ,int ,int ) ;
 int taosFreeMsgHdr (int ) ;
 int taosTmrStopA (int *) ;

void taosRemoveUdpBuf(SUdpBuf *pBuf) {
  taosTmrStopA(&pBuf->timer);
  taosDeleteIpHash(pBuf->pConn->hash, pBuf->ip, pBuf->port);




  pBuf->signature = ((void*)0);
  taosFreeMsgHdr(pBuf->msgHdr);
  free(pBuf);
}
