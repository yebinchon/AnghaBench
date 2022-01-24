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
struct TYPE_8__ {int fromMemPool; int /*<<< orphan*/  state; int /*<<< orphan*/  lastAccessTime; int /*<<< orphan*/  httpVersion; struct TYPE_8__* signature; } ;
struct TYPE_7__ {int /*<<< orphan*/  pContextPool; } ;
typedef  TYPE_1__ HttpServer ;
typedef  TYPE_2__ HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_CONTEXT_STATE_READY ; 
 int /*<<< orphan*/  HTTP_VERSION_10 ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

HttpContext *FUNC5(HttpServer *pServer) {
  HttpContext *pContext = (HttpContext *)FUNC4(pServer->pContextPool);
  if (pContext != NULL) {
    pContext->fromMemPool = 1;
    FUNC0("context:%p, is malloced from mempool", pContext);
  } else {
    pContext = (HttpContext *)FUNC1(sizeof(HttpContext));
    if (pContext == NULL) {
      return NULL;
    } else {
      FUNC2(pContext, 0, sizeof(HttpContext));
    }
    FUNC0("context:%p, is malloced from raw memory", pContext);
  }

  pContext->signature = pContext;
  pContext->httpVersion = HTTP_VERSION_10;
  pContext->lastAccessTime = FUNC3();
  pContext->state = HTTP_CONTEXT_STATE_READY;
  return pContext;
}