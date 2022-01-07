
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* path; } ;
struct TYPE_7__ {int pass; TYPE_2__ parser; } ;
struct TYPE_5__ {int len; int pos; } ;
typedef TYPE_2__ HttpParser ;
typedef TYPE_3__ HttpContext ;


 size_t TG_PASS_URL_POS ;
 int TSDB_PASSWORD_LEN ;
 int strcpy (int ,int ) ;

bool tgGetPassFromUrl(HttpContext *pContext) {
  HttpParser *pParser = &pContext->parser;
  if (pParser->path[TG_PASS_URL_POS].len > TSDB_PASSWORD_LEN - 1 || pParser->path[TG_PASS_URL_POS].len <= 0) {
    return 0;
  }

  strcpy(pContext->pass, pParser->path[TG_PASS_URL_POS].pos);
  return 1;
}
