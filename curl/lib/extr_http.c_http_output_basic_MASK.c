#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* proxyuserpwd; char* userpwd; } ;
struct TYPE_3__ {char* user; char* passwd; } ;
struct connectdata {char* user; char* passwd; TYPE_2__ allocptr; TYPE_1__ http_proxy; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ CURLE_REMOTE_ACCESS_DENIED ; 
 scalar_t__ FUNC0 (struct Curl_easy*,char*,int /*<<< orphan*/ ,char**,size_t*) ; 
 char* FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static CURLcode FUNC4(struct connectdata *conn, bool proxy)
{
  size_t size = 0;
  char *authorization = NULL;
  struct Curl_easy *data = conn->data;
  char **userp;
  const char *user;
  const char *pwd;
  CURLcode result;
  char *out;

  if(proxy) {
    userp = &conn->allocptr.proxyuserpwd;
    user = conn->http_proxy.user;
    pwd = conn->http_proxy.passwd;
  }
  else {
    userp = &conn->allocptr.userpwd;
    user = conn->user;
    pwd = conn->passwd;
  }

  out = FUNC1("%s:%s", user, pwd);
  if(!out)
    return CURLE_OUT_OF_MEMORY;

  result = FUNC0(data, out, FUNC3(out), &authorization, &size);
  if(result)
    goto fail;

  if(!authorization) {
    result = CURLE_REMOTE_ACCESS_DENIED;
    goto fail;
  }

  FUNC2(*userp);
  *userp = FUNC1("%sAuthorization: Basic %s\r\n",
                   proxy ? "Proxy-" : "",
                   authorization);
  FUNC2(authorization);
  if(!*userp) {
    result = CURLE_OUT_OF_MEMORY;
    goto fail;
  }

  fail:
  FUNC2(out);
  return result;
}