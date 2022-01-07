
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HttpContext {int pass; int user; } ;


 int HTTP_PARSE_URL_ERROR ;
 int HTTP_PARSE_USR_ERROR ;
 int REST_ACTION_URL_POS ;
 int REST_TIMESTAMP_FMT_LOCAL_STRING ;
 int REST_TIMESTAMP_FMT_TIMESTAMP ;
 int REST_TIMESTAMP_FMT_UTC_STRING ;
 int httpSendErrorResp (struct HttpContext*,int ) ;
 scalar_t__ httpUrlMatch (struct HttpContext*,int ,char*) ;
 int restGetPassFromUrl (struct HttpContext*) ;
 int restGetUserFromUrl (struct HttpContext*) ;
 int restProcessLoginRequest (struct HttpContext*) ;
 int restProcessSqlRequest (struct HttpContext*,int ) ;
 scalar_t__ strlen (int ) ;

bool restProcessRequest(struct HttpContext* pContext) {
  if (httpUrlMatch(pContext, REST_ACTION_URL_POS, "login")) {
    restGetUserFromUrl(pContext);
    restGetPassFromUrl(pContext);
  }

  if (strlen(pContext->user) == 0 || strlen(pContext->pass) == 0) {
    httpSendErrorResp(pContext, HTTP_PARSE_USR_ERROR);
    return 0;
  }

  if (httpUrlMatch(pContext, REST_ACTION_URL_POS, "sql")) {
    return restProcessSqlRequest(pContext, REST_TIMESTAMP_FMT_LOCAL_STRING);
  } else if (httpUrlMatch(pContext, REST_ACTION_URL_POS, "sqlt")) {
    return restProcessSqlRequest(pContext, REST_TIMESTAMP_FMT_TIMESTAMP);
  } else if (httpUrlMatch(pContext, REST_ACTION_URL_POS, "sqlutc")) {
    return restProcessSqlRequest(pContext, REST_TIMESTAMP_FMT_UTC_STRING);
  } else if (httpUrlMatch(pContext, REST_ACTION_URL_POS, "login")) {
    return restProcessLoginRequest(pContext);
  } else {
  }

  httpSendErrorResp(pContext, HTTP_PARSE_URL_ERROR);
  return 0;
}
