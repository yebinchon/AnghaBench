
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HttpContext {int pass; int user; } ;


 int GC_ACTION_URL_POS ;
 int HTTP_PARSE_USR_ERROR ;
 int gcGetPassFromUrl (struct HttpContext*) ;
 int gcGetUserFromUrl (struct HttpContext*) ;
 int gcProcessHeartbeatRequest (struct HttpContext*) ;
 int gcProcessLoginRequest (struct HttpContext*) ;
 int gcProcessQueryRequest (struct HttpContext*) ;
 int httpSendErrorResp (struct HttpContext*,int ) ;
 scalar_t__ httpUrlMatch (struct HttpContext*,int ,char*) ;
 scalar_t__ strlen (int ) ;

bool gcProcessRequest(struct HttpContext* pContext) {
  if (httpUrlMatch(pContext, GC_ACTION_URL_POS, "login")) {
    gcGetUserFromUrl(pContext);
    gcGetPassFromUrl(pContext);
  }

  if (strlen(pContext->user) == 0 || strlen(pContext->pass) == 0) {
    httpSendErrorResp(pContext, HTTP_PARSE_USR_ERROR);
    return 0;
  }

  if (httpUrlMatch(pContext, GC_ACTION_URL_POS, "query")) {
    return gcProcessQueryRequest(pContext);
  } else if (httpUrlMatch(pContext, GC_ACTION_URL_POS, "heartbeat")) {
    return gcProcessHeartbeatRequest(pContext);
  } else if (httpUrlMatch(pContext, GC_ACTION_URL_POS, "login")) {
    return gcProcessLoginRequest(pContext);
  } else {
    return gcProcessHeartbeatRequest(pContext);
  }
}
