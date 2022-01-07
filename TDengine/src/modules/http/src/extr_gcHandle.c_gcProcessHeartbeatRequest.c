
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * encodeMethod; int reqType; int ipstr; int fd; } ;
typedef TYPE_1__ HttpContext ;


 int HTTP_REQTYPE_HEARTBEAT ;
 int gcHeartBeatMethod ;
 int httpTrace (char*,TYPE_1__*,int ,int ) ;

bool gcProcessHeartbeatRequest(HttpContext* pContext) {
  httpTrace("context:%p, fd:%d, ip:%s, process grafana heartbeat msg", pContext, pContext->fd, pContext->ipstr);
  pContext->reqType = HTTP_REQTYPE_HEARTBEAT;
  pContext->encodeMethod = &gcHeartBeatMethod;
  return 1;
}
