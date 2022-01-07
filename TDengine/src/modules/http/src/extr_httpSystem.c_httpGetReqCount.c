
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {int requestNum; } ;


 scalar_t__ atomic_exchange_32 (int *,int ) ;
 TYPE_1__* httpServer ;

void httpGetReqCount(int32_t *httpReqestNum) {
  if (httpServer != ((void*)0)) {
    *httpReqestNum = atomic_exchange_32(&httpServer->requestNum, 0);
  } else {
    *httpReqestNum = 0;
  }
}
