#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fd; int /*<<< orphan*/  ipstr; } ;
struct TYPE_6__ {TYPE_4__* pContext; } ;
typedef  TYPE_1__ JsonBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(JsonBuf* buf) {
  if (buf->pContext->fd <= 0) {
    FUNC0("context:%p, fd:%d, ip:%s, json buf fd is 0", buf->pContext, buf->pContext->fd, buf->pContext->ipstr);
    buf->pContext->fd = -1;
  }

  FUNC2(buf, true);
  FUNC1(buf->pContext, "0\r\n\r\n", 5);  // end of chunked resp
}