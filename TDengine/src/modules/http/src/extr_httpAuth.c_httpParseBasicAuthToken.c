
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user; int ipstr; int fd; int pass; } ;
typedef TYPE_1__ HttpContext ;


 int TSDB_PASSWORD_LEN ;
 int TSDB_USER_LEN ;
 scalar_t__ base64_decode (char*,int,int*) ;
 int free (char*) ;
 int httpError (char*,TYPE_1__*,int ,int ,char*) ;
 int httpTrace (char*,TYPE_1__*,int ,int ,int ) ;
 int strncpy (int ,char*,size_t) ;
 char* strstr (char*,char*) ;

bool httpParseBasicAuthToken(HttpContext *pContext, char *token, int len) {
  token[len] = '\0';
  int outlen = 0;
  char *base64 = (char *)base64_decode(token, len, &outlen);
  if (base64 == ((void*)0) || outlen == 0) {
    httpError("context:%p, fd:%d, ip:%s, basic token:%s parsed error", pContext, pContext->fd, pContext->ipstr, token);
    return 0;
  }

  char *user = strstr(base64, ":");
  if (user == ((void*)0)) {
    httpError("context:%p, fd:%d, ip:%s, basic token:%s invalid format", pContext, pContext->fd, pContext->ipstr,
              token);
    free(base64);
    return 0;
  }

  int user_len = (int)(user - base64);
  if (user_len < 1 || user_len >= TSDB_USER_LEN) {
    httpError("context:%p, fd:%d, ip:%s, basic token:%s parse user error", pContext, pContext->fd, pContext->ipstr,
              token);
    free(base64);
    return 0;
  }
  strncpy(pContext->user, base64, (size_t)user_len);

  char *password = user + 1;
  int pass_len = (int)((base64 + outlen) - password);
  if (pass_len < 1 || pass_len >= TSDB_PASSWORD_LEN) {
    httpError("context:%p, fd:%d, ip:%s, basic token:%s parse password error", pContext, pContext->fd, pContext->ipstr,
              token);
    free(base64);
    return 0;
  }
  strncpy(pContext->pass, password, (size_t)pass_len);

  free(base64);
  httpTrace("context:%p, fd:%d, ip:%s, basic token parsed success, user:%s", pContext, pContext->fd, pContext->ipstr,
            pContext->user);
  return 1;
}
