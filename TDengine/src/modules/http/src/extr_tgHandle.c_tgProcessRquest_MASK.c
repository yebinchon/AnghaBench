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
 int /*<<< orphan*/  HTTP_PARSE_USR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct HttpContext*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct HttpContext*) ; 
 int FUNC3 (struct HttpContext*,char*) ; 

bool FUNC4(struct HttpContext *pContext) {
  if (FUNC1(pContext->user) == 0 || FUNC1(pContext->pass) == 0) {
    FUNC0(pContext, HTTP_PARSE_USR_ERROR);
    return false;
  }

  char *db = FUNC2(pContext);
  if (db == NULL) {
    return false;
  }

  return FUNC3(pContext, db);
}