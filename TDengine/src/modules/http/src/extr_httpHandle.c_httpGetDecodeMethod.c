
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int pos; } ;
struct TYPE_15__ {TYPE_3__* path; TYPE_2__ method; TYPE_6__* pMethod; } ;
struct TYPE_17__ {int ipstr; int fd; TYPE_1__* pThread; TYPE_5__ parser; } ;
struct TYPE_16__ {int module; } ;
struct TYPE_14__ {int methodScannerLen; TYPE_6__** methodScanner; } ;
struct TYPE_13__ {int pos; } ;
struct TYPE_11__ {TYPE_4__* pServer; } ;
typedef TYPE_4__ HttpServer ;
typedef TYPE_5__ HttpParser ;
typedef TYPE_6__ HttpDecodeMethod ;
typedef TYPE_7__ HttpContext ;


 int HTTP_UNSUPPORT_URL ;
 int httpError (char*,TYPE_7__*,int ,int ,int ,int ) ;
 int httpSendErrorResp (TYPE_7__*,int ) ;
 scalar_t__ strcmp (int ,int ) ;

bool httpGetDecodeMethod(HttpContext* pContext) {
  HttpParser* pParser = &pContext->parser;

  HttpServer* pServer = pContext->pThread->pServer;
  int methodLen = pServer->methodScannerLen;
  for (int i = 0; i < methodLen; i++) {
    HttpDecodeMethod* method = pServer->methodScanner[i];
    if (strcmp(method->module, pParser->path[0].pos) != 0) {
      continue;
    }
    pParser->pMethod = method;
    return 1;
  }

  httpError("context:%p, fd:%d, ip:%s, error:the url is not support, method:%s, path:%s",
            pContext, pContext->fd, pContext->ipstr, pParser->method.pos, pParser->path[0].pos);
  httpSendErrorResp(pContext, HTTP_UNSUPPORT_URL);

  return 0;
}
