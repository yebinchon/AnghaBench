
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * signature; int * taos; int id; } ;
typedef TYPE_1__ HttpSession ;


 int httpTrace (char*,TYPE_1__*,int ,int *) ;
 int taos_close (int *) ;

void httpResetSession(char *session) {
  HttpSession *pSession = (HttpSession *)session;
  httpTrace("close session:%p:%s:%p", pSession, pSession->id, pSession->taos);
  if (pSession->taos != ((void*)0)) {
    taos_close(pSession->taos);
    pSession->taos = ((void*)0);
  }
  pSession->signature = ((void*)0);
}
