
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ expire; scalar_t__ access; int * taos; int id; } ;
typedef TYPE_1__ HttpSession ;


 int httpTrace (char*,TYPE_1__*,int ,int *,scalar_t__,...) ;
 scalar_t__ taosGetTimestampSec () ;

int httpSessionExpired(char *session) {
  HttpSession *pSession = (HttpSession *)session;
  time_t cur = taosGetTimestampSec();

  if (pSession->taos != ((void*)0)) {
    if (pSession->expire > cur) {
      return 0;
    }
    if (pSession->access > 0) {
      httpTrace("session:%p:%s:%p is expired, but still access:%d", pSession, pSession->id, pSession->taos,
                pSession->access);
      return 0;
    }
    httpTrace("need close session:%p:%s:%p for it expired, cur:%d, expire:%d, invertal:%d",
              pSession, pSession->id, pSession->taos, cur, pSession->expire, cur - pSession->expire);
  }

  return 1;
}
