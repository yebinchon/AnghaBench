#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pLast; } ;
struct TYPE_8__ {void* httpVersion; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_1__ parser; } ;
typedef  TYPE_1__ HttpParser ;
typedef  TYPE_2__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_PARSE_HTTP_VERSION_ERROR ; 
 void* HTTP_VERSION_10 ; 
 void* HTTP_VERSION_11 ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char) ; 

bool FUNC4(HttpContext* pContext) {
  HttpParser* pParser = &pContext->parser;
  char* pEnd = FUNC3(pParser->pLast, '1');
  if (pEnd == NULL) {
    FUNC0("context:%p, fd:%d, ip:%s, can't find http version at position:%s", pContext, pContext->fd,
              pContext->ipstr, pParser->pLast);
    FUNC1(pContext, HTTP_PARSE_HTTP_VERSION_ERROR);
    return false;
  }

  if (*(pEnd + 1) != '.') {
    FUNC0("context:%p, fd:%d, ip:%s, can't find http version at position:%s", pContext, pContext->fd,
              pContext->ipstr, pParser->pLast);
    FUNC1(pContext, HTTP_PARSE_HTTP_VERSION_ERROR);
    return false;
  }

  if (*(pEnd + 2) == '0')
    pContext->httpVersion = HTTP_VERSION_10;
  else if (*(pEnd + 2) == '1')
    pContext->httpVersion = HTTP_VERSION_11;
  else if (*(pEnd + 2) == '2')
    pContext->httpVersion = HTTP_VERSION_11;
  else
    pContext->httpVersion = HTTP_VERSION_10;

  FUNC2("context:%p, fd:%d, ip:%s, httpVersion:1.%d", pContext, pContext->fd, pContext->ipstr,
            pContext->httpVersion);
  return true;
}