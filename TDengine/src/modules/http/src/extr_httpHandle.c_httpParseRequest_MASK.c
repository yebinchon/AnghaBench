#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int pos; } ;
struct TYPE_15__ {int pCur; int pLast; TYPE_2__ data; int /*<<< orphan*/  buffer; int /*<<< orphan*/  bufsize; } ;
struct TYPE_16__ {int parsed; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_3__ parser; TYPE_1__* pThread; } ;
struct TYPE_13__ {int /*<<< orphan*/  numOfFds; int /*<<< orphan*/  label; } ;
typedef  TYPE_3__ HttpParser ;
typedef  TYPE_4__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

bool FUNC7(HttpContext* pContext) {
  HttpParser *pParser = &pContext->parser;
  if (pContext->parsed) {
    return true;
  }

  FUNC6("context:%p, fd:%d, ip:%s, thread:%s, numOfFds:%d, read size:%d, raw data:\n%s",
           pContext, pContext->fd, pContext->ipstr, pContext->pThread->label, pContext->pThread->numOfFds,
           pContext->parser.bufsize, pContext->parser.buffer);

  if (!FUNC1(pContext)) {
    return false;
  }

  if (!FUNC5(pContext)) {
    return false;
  }

  if (!FUNC4(pContext)) {
    return false;
  }

  if (!FUNC0(pContext)) {
    return false;
  }

  do {
    if (!FUNC2(pContext)) {
      return false;
    }

    // Empty line, end of the HTTP HEAD
    if (pParser->pCur - pParser->pLast == 1) {
      pParser->data.pos = ++pParser->pCur;
      break;
    }

    if (!FUNC3(pContext)) {
      return false;
    }

    pParser->pLast = ++pParser->pCur;
  } while (1);

  FUNC6("context:%p, fd:%d, ip:%s, parse http head ok", pContext, pContext->fd, pContext->ipstr);

  pContext->parsed = true;
  return true;
}