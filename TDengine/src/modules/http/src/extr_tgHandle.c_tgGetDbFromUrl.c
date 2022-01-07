
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* path; } ;
struct TYPE_8__ {TYPE_2__ parser; } ;
struct TYPE_6__ {scalar_t__ len; char* pos; } ;
typedef TYPE_2__ HttpParser ;
typedef TYPE_3__ HttpContext ;


 int HTTP_TG_DB_NOT_INPUT ;
 int HTTP_TG_DB_TOO_LONG ;
 size_t TG_DB_URL_POS ;
 scalar_t__ TSDB_DB_NAME_LEN ;
 int httpSendErrorResp (TYPE_3__*,int ) ;

char *tgGetDbFromUrl(HttpContext *pContext) {
  HttpParser *pParser = &pContext->parser;
  if (pParser->path[TG_DB_URL_POS].len <= 0) {
    httpSendErrorResp(pContext, HTTP_TG_DB_NOT_INPUT);
    return ((void*)0);
  }

  if (pParser->path[TG_DB_URL_POS].len >= TSDB_DB_NAME_LEN) {
    httpSendErrorResp(pContext, HTTP_TG_DB_TOO_LONG);
    return ((void*)0);
  }

  return pParser->path[TG_DB_URL_POS].pos;
}
