#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t httpVersion; size_t httpKeepAlive; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ HttpContext ;

/* Variables and functions */
 size_t HTTP_RESPONSE_ERROR ; 
 size_t HTTP_RESPONSE_JSON_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/ * httpKeepAliveStr ; 
 char** httpRespTemplate ; 
 int /*<<< orphan*/ * httpVersionStr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (char*,char*,int,...) ; 

void FUNC4(HttpContext *pContext, int httpCode, char *httpCodeStr, int errNo, char *desc) {
  FUNC1("context:%p, fd:%d, ip:%s, code:%d, error:%d:%s", pContext, pContext->fd, pContext->ipstr, httpCode, errNo,
            desc);

  char head[512] = {0};
  char body[512] = {0};

  int bodyLen = FUNC3(body, httpRespTemplate[HTTP_RESPONSE_JSON_ERROR], errNo, desc);
  int headLen = FUNC3(head, httpRespTemplate[HTTP_RESPONSE_ERROR], httpVersionStr[pContext->httpVersion], httpCode,
                        httpCodeStr, httpKeepAliveStr[pContext->httpKeepAlive], bodyLen);

  FUNC2(pContext, head, headLen);
  FUNC2(pContext, body, bodyLen);
  FUNC0(pContext);
}