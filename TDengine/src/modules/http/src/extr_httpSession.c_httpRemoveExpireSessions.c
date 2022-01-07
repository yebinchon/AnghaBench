
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int serverMutex; int pSessionHash; } ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ HttpSession ;
typedef TYPE_2__ HttpServer ;


 int httpResetSession (char*) ;
 int httpSessionExpired ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int taosDeleteStrHashNode (int ,int ,TYPE_1__*) ;
 scalar_t__ taosVisitStrHashWithFp (int ,int ) ;

void httpRemoveExpireSessions(HttpServer *pServer) {
  int expiredNum = 0;
  do {
    pthread_mutex_lock(&pServer->serverMutex);

    HttpSession *pSession = (HttpSession *)taosVisitStrHashWithFp(pServer->pSessionHash, httpSessionExpired);
    if (pSession == ((void*)0)) {
      pthread_mutex_unlock(&pServer->serverMutex);
      break;
    }

    httpResetSession((char *)pSession);
    taosDeleteStrHashNode(pServer->pSessionHash, pSession->id, pSession);

    pthread_mutex_unlock(&pServer->serverMutex);

    if (++expiredNum > 10) {
      break;
    }
  } while (1);
}
