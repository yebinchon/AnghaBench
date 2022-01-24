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
struct connectdata {int /*<<< orphan*/ * sock; struct Curl_easy* data; } ;
struct TYPE_3__ {char* path; char* query; } ;
struct TYPE_4__ {TYPE_1__ up; } ;
struct Curl_easy {TYPE_2__ state; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENTWRITE_HEADER ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ CURLE_SEND_ERROR ; 
 scalar_t__ FUNC0 (struct connectdata*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct connectdata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,size_t,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct Curl_easy*,char*,int /*<<< orphan*/ ,char**,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct connectdata*,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 size_t FIRSTSOCKET ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 char* FUNC7 (char*,char*,char*) ; 
 int FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static CURLcode FUNC13(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  curl_socket_t sockfd = conn->sock[FIRSTSOCKET];
  char *gopherpath;
  char *path = data->state.up.path;
  char *query = data->state.up.query;
  char *sel = NULL;
  char *sel_org = NULL;
  ssize_t amount, k;
  size_t len;

  *done = TRUE; /* unconditionally */

  /* path is guaranteed non-NULL */
  FUNC5(path);

  if(query)
    gopherpath = FUNC7("%s?%s", path, query);
  else
    gopherpath = FUNC11(path);

  if(!gopherpath)
    return CURLE_OUT_OF_MEMORY;

  /* Create selector. Degenerate cases: / and /1 => convert to "" */
  if(FUNC12(gopherpath) <= 2) {
    sel = (char *)"";
    len = FUNC12(sel);
    FUNC10(gopherpath);
  }
  else {
    char *newp;

    /* Otherwise, drop / and the first character (i.e., item type) ... */
    newp = gopherpath;
    newp += 2;

    /* ... and finally unescape */
    result = FUNC3(data, newp, 0, &sel, &len, FALSE);
    FUNC10(gopherpath);
    if(result)
      return result;
    sel_org = sel;
  }

  /* We use Curl_write instead of Curl_sendf to make sure the entire buffer is
     sent, which could be sizeable with long selectors. */
  k = FUNC8(len);

  for(;;) {
    result = FUNC4(conn, sockfd, sel, k, &amount);
    if(!result) { /* Which may not have written it all! */
      result = FUNC0(conn, CLIENTWRITE_HEADER, sel, amount);
      if(result)
        break;

      k -= amount;
      sel += amount;
      if(k < 1)
        break; /* but it did write it all */
    }
    else
      break;

    /* Don't busyloop. The entire loop thing is a work-around as it causes a
       BLOCKING behavior which is a NO-NO. This function should rather be
       split up in a do and a doing piece where the pieces that aren't
       possible to send now will be sent in the doing function repeatedly
       until the entire request is sent.

       Wait a while for the socket to be writable. Note that this doesn't
       acknowledge the timeout.
    */
    if(FUNC6(sockfd, 100) < 0) {
      result = CURLE_SEND_ERROR;
      break;
    }
  }

  FUNC10(sel_org);

  if(!result)
    /* We can use Curl_sendf to send the terminal \r\n relatively safely and
       save allocing another string/doing another _write loop. */
    result = FUNC1(sockfd, conn, "\r\n");
  if(result) {
    FUNC9(data, "Failed sending Gopher request");
    return result;
  }
  result = FUNC0(conn, CLIENTWRITE_HEADER, (char *)"\r\n", 2);
  if(result)
    return result;

  FUNC2(data, FIRSTSOCKET, -1, FALSE, -1);
  return CURLE_OK;
}