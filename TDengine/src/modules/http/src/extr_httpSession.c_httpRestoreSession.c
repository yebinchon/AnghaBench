
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* session; int user; int ipstr; TYPE_1__* pThread; } ;
struct TYPE_10__ {int serverMutex; } ;
struct TYPE_9__ {int expire; int access; int taos; int id; struct TYPE_9__* signature; } ;
struct TYPE_8__ {TYPE_3__* pServer; } ;
typedef TYPE_2__ HttpSession ;
typedef TYPE_3__ HttpServer ;
typedef TYPE_4__ HttpContext ;


 int httpTrace (char*,TYPE_4__*,int ,int ,TYPE_2__*,int ,int ,int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void httpRestoreSession(HttpContext *pContext) {
  HttpServer * server = pContext->pThread->pServer;


  pthread_mutex_lock(&server->serverMutex);
  HttpSession *session = pContext->session;
  if (session == ((void*)0) || session != session->signature) {
    pthread_mutex_unlock(&server->serverMutex);
    return;
  }
  session->access--;
  httpTrace("context:%p, ip:%s, user:%s, restore session:%p:%s:%p, access:%d, expire:%d",
            pContext, pContext->ipstr, pContext->user, session, session->id, session->taos,
            session->access, pContext->session->expire);
  pthread_mutex_unlock(&server->serverMutex);
}
