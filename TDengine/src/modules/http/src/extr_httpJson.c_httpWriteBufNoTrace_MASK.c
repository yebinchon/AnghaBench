#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct HttpContext {int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct HttpContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct HttpContext*,char const*,int) ; 

int FUNC2(struct HttpContext *pContext, const char *buf, int sz) {
  int writeSz = FUNC1(pContext, buf, sz);
  if (writeSz != sz) {
    FUNC0("context:%p, fd:%d, ip:%s, dataSize:%d, writeSize:%d, failed to send response",
              pContext, pContext->fd, pContext->ipstr, sz, writeSz);
  }

  return writeSz;
}