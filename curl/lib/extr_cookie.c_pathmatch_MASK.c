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

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char const*) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,size_t) ; 

__attribute__((used)) static bool FUNC5(const char *cookie_path, const char *request_uri)
{
  size_t cookie_path_len;
  size_t uri_path_len;
  char *uri_path = NULL;
  char *pos;
  bool ret = FALSE;

  /* cookie_path must not have last '/' separator. ex: /sample */
  cookie_path_len = FUNC3(cookie_path);
  if(1 == cookie_path_len) {
    /* cookie_path must be '/' */
    return TRUE;
  }

  uri_path = FUNC2(request_uri);
  if(!uri_path)
    return FALSE;
  pos = FUNC1(uri_path, '?');
  if(pos)
    *pos = 0x0;

  /* #-fragments are already cut off! */
  if(0 == FUNC3(uri_path) || uri_path[0] != '/') {
    FUNC0(uri_path);
    uri_path = FUNC2("/");
    if(!uri_path)
      return FALSE;
  }

  /* here, RFC6265 5.1.4 says
     4. Output the characters of the uri-path from the first character up
        to, but not including, the right-most %x2F ("/").
     but URL path /hoge?fuga=xxx means /hoge/index.cgi?fuga=xxx in some site
     without redirect.
     Ignore this algorithm because /hoge is uri path for this case
     (uri path is not /).
   */

  uri_path_len = FUNC3(uri_path);

  if(uri_path_len < cookie_path_len) {
    ret = FALSE;
    goto pathmatched;
  }

  /* not using checkprefix() because matching should be case-sensitive */
  if(FUNC4(cookie_path, uri_path, cookie_path_len)) {
    ret = FALSE;
    goto pathmatched;
  }

  /* The cookie-path and the uri-path are identical. */
  if(cookie_path_len == uri_path_len) {
    ret = TRUE;
    goto pathmatched;
  }

  /* here, cookie_path_len < uri_path_len */
  if(uri_path[cookie_path_len] == '/') {
    ret = TRUE;
    goto pathmatched;
  }

  ret = FALSE;

pathmatched:
  FUNC0(uri_path);
  return ret;
}