#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; } ;
struct TYPE_10__ {int len; scalar_t__ pos; } ;
struct TYPE_11__ {int bufsize; TYPE_1__ data; scalar_t__ buffer; } ;
typedef  TYPE_2__ HttpParser ;
typedef  TYPE_3__ HttpContext ;

/* Variables and functions */
 int HTTP_CHECK_BODY_CONTINUE ; 
 int HTTP_CHECK_BODY_ERROR ; 
 int HTTP_CHECK_BODY_SUCCESS ; 
 int /*<<< orphan*/  HTTP_PARSE_BODY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC4(HttpContext* pContext, HttpParser* pParser) {
  int dataReadLen = pParser->bufsize - (int)(pParser->data.pos - pParser->buffer);
  if (dataReadLen > pParser->data.len) {
    FUNC0("context:%p, fd:%d, ip:%s, un-chunked body length invalid, dataReadLen:%d > pContext->data.len:%d",
              pContext, pContext->fd, pContext->ipstr, dataReadLen, pParser->data.len);
    FUNC2(pContext, HTTP_PARSE_BODY_ERROR);
    return HTTP_CHECK_BODY_ERROR;
  } else if (dataReadLen < pParser->data.len) {
    FUNC3("context:%p, fd:%d, ip:%s, un-chunked body not finished, dataReadLen:%d < pContext->data.len:%d, continue read",
              pContext, pContext->fd, pContext->ipstr, dataReadLen, pParser->data.len);
    if (!FUNC1(pContext)) {
      FUNC0("context:%p, fd:%d, ip:%s, read chunked request error", pContext, pContext->fd, pContext->ipstr);
      return HTTP_CHECK_BODY_ERROR;
    } else {
      return HTTP_CHECK_BODY_CONTINUE;
    }
  } else {
    return HTTP_CHECK_BODY_SUCCESS;
  }
}