#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t httpVersion; size_t httpKeepAlive; } ;
typedef  TYPE_1__ HttpContext ;

/* Variables and functions */
 size_t HTTP_RESPONSE_JSON_OK ; 
 size_t HTTP_RESPONSE_OK ; 
 int /*<<< orphan*/  HTTP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * httpKeepAliveStr ; 
 char** httpRespTemplate ; 
 int /*<<< orphan*/ * httpVersionStr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ ,char*,...) ; 

void FUNC3(HttpContext *pContext, char *desc) {
  char head[1024] = {0};
  char body[1024] = {0};

  int bodyLen = FUNC2(body, httpRespTemplate[HTTP_RESPONSE_JSON_OK], HTTP_SUCCESS, desc);
  int headLen = FUNC2(head, httpRespTemplate[HTTP_RESPONSE_OK], httpVersionStr[pContext->httpVersion],
                        httpKeepAliveStr[pContext->httpKeepAlive], bodyLen);

  FUNC1(pContext, head, headLen);
  FUNC1(pContext, body, bodyLen);
  FUNC0(pContext);
}