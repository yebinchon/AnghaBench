
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* path; } ;
struct TYPE_7__ {TYPE_2__ parser; } ;
struct TYPE_5__ {scalar_t__ len; int pos; } ;
typedef TYPE_2__ HttpParser ;
typedef TYPE_3__ HttpContext ;


 int HTTP_MAX_URL ;
 scalar_t__ strcmp (int ,char*) ;

bool httpUrlMatch(HttpContext* pContext, int pos, char* cmp) {
  HttpParser* pParser = &pContext->parser;

  if (pos < 0 || pos >= HTTP_MAX_URL) {
    return 0;
  }

  if (pParser->path[pos].len <= 0) {
    return 0;
  }

  if (strcmp(pParser->path[pos].pos, cmp) != 0) {
    return 0;
  }

  return 1;
}
