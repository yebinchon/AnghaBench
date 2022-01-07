
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HttpContext {int pass; int user; } ;


 int HTTP_PARSE_USR_ERROR ;
 int httpSendErrorResp (struct HttpContext*,int ) ;
 scalar_t__ strlen (int ) ;
 char* tgGetDbFromUrl (struct HttpContext*) ;
 int tgProcessQueryRequest (struct HttpContext*,char*) ;

bool tgProcessRquest(struct HttpContext *pContext) {
  if (strlen(pContext->user) == 0 || strlen(pContext->pass) == 0) {
    httpSendErrorResp(pContext, HTTP_PARSE_USR_ERROR);
    return 0;
  }

  char *db = tgGetDbFromUrl(pContext);
  if (db == ((void*)0)) {
    return 0;
  }

  return tgProcessQueryRequest(pContext, db);
}
