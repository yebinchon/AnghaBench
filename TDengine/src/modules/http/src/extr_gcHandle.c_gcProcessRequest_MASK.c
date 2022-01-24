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
struct HttpContext {int /*<<< orphan*/  pass; int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC_ACTION_URL_POS ; 
 int /*<<< orphan*/  HTTP_PARSE_USR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct HttpContext*) ; 
 int /*<<< orphan*/  FUNC1 (struct HttpContext*) ; 
 int FUNC2 (struct HttpContext*) ; 
 int FUNC3 (struct HttpContext*) ; 
 int FUNC4 (struct HttpContext*) ; 
 int /*<<< orphan*/  FUNC5 (struct HttpContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct HttpContext*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(struct HttpContext* pContext) {
  if (FUNC6(pContext, GC_ACTION_URL_POS, "login")) {
    FUNC1(pContext);
    FUNC0(pContext);
  }

  if (FUNC7(pContext->user) == 0 || FUNC7(pContext->pass) == 0) {
    FUNC5(pContext, HTTP_PARSE_USR_ERROR);
    return false;
  }

  if (FUNC6(pContext, GC_ACTION_URL_POS, "query")) {
    return FUNC4(pContext);
  } else if (FUNC6(pContext, GC_ACTION_URL_POS, "heartbeat")) {
    return FUNC2(pContext);
  } else if (FUNC6(pContext, GC_ACTION_URL_POS, "login")) {
    return FUNC3(pContext);
  } else {
    return FUNC2(pContext);
  }
}