
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int pos; } ;
struct TYPE_15__ {int pCur; int pLast; TYPE_2__ data; int buffer; int bufsize; } ;
struct TYPE_16__ {int parsed; int ipstr; int fd; TYPE_3__ parser; TYPE_1__* pThread; } ;
struct TYPE_13__ {int numOfFds; int label; } ;
typedef TYPE_3__ HttpParser ;
typedef TYPE_4__ HttpContext ;


 int httpGetDecodeMethod (TYPE_4__*) ;
 int httpGetHttpMethod (TYPE_4__*) ;
 int httpGetNextLine (TYPE_4__*) ;
 int httpParseHead (TYPE_4__*) ;
 int httpParseHttpVersion (TYPE_4__*) ;
 int httpParseURL (TYPE_4__*) ;
 int httpTrace (char*,TYPE_4__*,int ,int ,...) ;

bool httpParseRequest(HttpContext* pContext) {
  HttpParser *pParser = &pContext->parser;
  if (pContext->parsed) {
    return 1;
  }

  httpTrace("context:%p, fd:%d, ip:%s, thread:%s, numOfFds:%d, read size:%d, raw data:\n%s",
           pContext, pContext->fd, pContext->ipstr, pContext->pThread->label, pContext->pThread->numOfFds,
           pContext->parser.bufsize, pContext->parser.buffer);

  if (!httpGetHttpMethod(pContext)) {
    return 0;
  }

  if (!httpParseURL(pContext)) {
    return 0;
  }

  if (!httpParseHttpVersion(pContext)) {
    return 0;
  }

  if (!httpGetDecodeMethod(pContext)) {
    return 0;
  }

  do {
    if (!httpGetNextLine(pContext)) {
      return 0;
    }


    if (pParser->pCur - pParser->pLast == 1) {
      pParser->data.pos = ++pParser->pCur;
      break;
    }

    if (!httpParseHead(pContext)) {
      return 0;
    }

    pParser->pLast = ++pParser->pCur;
  } while (1);

  httpTrace("context:%p, fd:%d, ip:%s, parse http head ok", pContext, pContext->fd, pContext->ipstr);

  pContext->parsed = 1;
  return 1;
}
