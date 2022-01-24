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
 int /*<<< orphan*/  HTTP_PARSE_URL_ERROR ; 
 int /*<<< orphan*/  HTTP_PARSE_USR_ERROR ; 
 int /*<<< orphan*/  REST_ACTION_URL_POS ; 
 int /*<<< orphan*/  REST_TIMESTAMP_FMT_LOCAL_STRING ; 
 int /*<<< orphan*/  REST_TIMESTAMP_FMT_TIMESTAMP ; 
 int /*<<< orphan*/  REST_TIMESTAMP_FMT_UTC_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct HttpContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct HttpContext*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct HttpContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct HttpContext*) ; 
 int FUNC4 (struct HttpContext*) ; 
 int FUNC5 (struct HttpContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

bool FUNC7(struct HttpContext* pContext) {
  if (FUNC1(pContext, REST_ACTION_URL_POS, "login")) {
    FUNC3(pContext);
    FUNC2(pContext);
  }

  if (FUNC6(pContext->user) == 0 || FUNC6(pContext->pass) == 0) {
    FUNC0(pContext, HTTP_PARSE_USR_ERROR);
    return false;
  }

  if (FUNC1(pContext, REST_ACTION_URL_POS, "sql")) {
    return FUNC5(pContext, REST_TIMESTAMP_FMT_LOCAL_STRING);
  } else if (FUNC1(pContext, REST_ACTION_URL_POS, "sqlt")) {
    return FUNC5(pContext, REST_TIMESTAMP_FMT_TIMESTAMP);
  } else if (FUNC1(pContext, REST_ACTION_URL_POS, "sqlutc")) {
    return FUNC5(pContext, REST_TIMESTAMP_FMT_UTC_STRING);
  } else if (FUNC1(pContext, REST_ACTION_URL_POS, "login")) {
    return FUNC4(pContext);
  } else {
  }

  FUNC0(pContext, HTTP_PARSE_URL_ERROR);
  return false;
}