#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; TYPE_1__* multiCmds; } ;
struct TYPE_5__ {char* buffer; int bufferSize; } ;
typedef  TYPE_1__ HttpSqlCmds ;
typedef  TYPE_2__ HttpContext ;

/* Variables and functions */
 int HTTP_MAX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (char*,size_t) ; 

bool FUNC3(HttpContext *pContext, int bufferSize) {
  HttpSqlCmds *multiCmds = pContext->multiCmds;

  if (bufferSize > HTTP_MAX_BUFFER_SIZE) {
    FUNC0("context:%p, fd:%d, ip:%s, user:%s, mulitcmd buffer size:%d large then %d",
              pContext, pContext->fd, pContext->ipstr, pContext->user, bufferSize, HTTP_MAX_BUFFER_SIZE);
    return false;
  }

  multiCmds->buffer = (char *)FUNC2(multiCmds->buffer, (size_t)bufferSize);
  if (multiCmds->buffer == NULL) {
    FUNC0("context:%p, fd:%d, ip:%s, user:%s, malloc buffer:%d error", pContext, pContext->fd, pContext->ipstr,
              pContext->user, bufferSize);
    return false;
  }
  FUNC1(multiCmds->buffer + multiCmds->bufferSize, 0, (size_t)(bufferSize - multiCmds->bufferSize));
  multiCmds->bufferSize = bufferSize;

  return true;
}