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
struct TYPE_5__ {int /*<<< orphan*/  user; int /*<<< orphan*/  ipstr; int /*<<< orphan*/  fd; int /*<<< orphan*/  pass; } ;
typedef  TYPE_1__ HttpContext ;

/* Variables and functions */
 int TSDB_PASSWORD_LEN ; 
 int TSDB_USER_LEN ; 
 scalar_t__ FUNC0 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC5 (char*,char*) ; 

bool FUNC6(HttpContext *pContext, char *token, int len) {
  token[len] = '\0';
  int   outlen = 0;
  char *base64 = (char *)FUNC0(token, len, &outlen);
  if (base64 == NULL || outlen == 0) {
    FUNC2("context:%p, fd:%d, ip:%s, basic token:%s parsed error", pContext, pContext->fd, pContext->ipstr, token);
    return false;
  }

  char *user = FUNC5(base64, ":");
  if (user == NULL) {
    FUNC2("context:%p, fd:%d, ip:%s, basic token:%s invalid format", pContext, pContext->fd, pContext->ipstr,
              token);
    FUNC1(base64);
    return false;
  }

  int user_len = (int)(user - base64);
  if (user_len < 1 || user_len >= TSDB_USER_LEN) {
    FUNC2("context:%p, fd:%d, ip:%s, basic token:%s parse user error", pContext, pContext->fd, pContext->ipstr,
              token);
    FUNC1(base64);
    return false;
  }
  FUNC4(pContext->user, base64, (size_t)user_len);

  char *password = user + 1;
  int   pass_len = (int)((base64 + outlen) - password);
  if (pass_len < 1 || pass_len >= TSDB_PASSWORD_LEN) {
    FUNC2("context:%p, fd:%d, ip:%s, basic token:%s parse password error", pContext, pContext->fd, pContext->ipstr,
              token);
    FUNC1(base64);
    return false;
  }
  FUNC4(pContext->pass, password, (size_t)pass_len);

  FUNC1(base64);
  FUNC3("context:%p, fd:%d, ip:%s, basic token parsed success, user:%s", pContext, pContext->fd, pContext->ipstr,
            pContext->user);
  return true;
}