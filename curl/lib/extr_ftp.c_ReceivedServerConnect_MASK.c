#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ timediff_t ;
struct pingpong {char* cache; scalar_t__ cache_size; } ;
struct ftp_conn {struct pingpong pp; } ;
struct TYPE_2__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ proto; int /*<<< orphan*/ * sock; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_FTP_ACCEPT_FAILED ; 
 int /*<<< orphan*/  CURLE_FTP_ACCEPT_TIMEOUT ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_WEIRD_SERVER_REPLY ; 
 int CURL_CSELECT_IN ; 
 int CURL_CSELECT_IN2 ; 
 int /*<<< orphan*/  CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct connectdata*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 size_t FIRSTSOCKET ; 
 size_t SECONDARYSOCKET ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*) ; 
 scalar_t__ FUNC3 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,char*) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn, bool *received)
{
  struct Curl_easy *data = conn->data;
  curl_socket_t ctrl_sock = conn->sock[FIRSTSOCKET];
  curl_socket_t data_sock = conn->sock[SECONDARYSOCKET];
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  struct pingpong *pp = &ftpc->pp;
  int result;
  timediff_t timeout_ms;
  ssize_t nread;
  int ftpcode;

  *received = FALSE;

  timeout_ms = FUNC3(data);
  FUNC4(data, "Checking for server connect\n");
  if(timeout_ms < 0) {
    /* if a timeout was already reached, bail out */
    FUNC2(data, "Accept timeout occurred while waiting server connect");
    return CURLE_FTP_ACCEPT_TIMEOUT;
  }

  /* First check whether there is a cached response from server */
  if(pp->cache_size && pp->cache && pp->cache[0] > '3') {
    /* Data connection could not be established, let's return */
    FUNC4(data, "There is negative response in cache while serv connect\n");
    FUNC0(&nread, conn, &ftpcode);
    return CURLE_FTP_ACCEPT_FAILED;
  }

  result = FUNC1(ctrl_sock, data_sock, CURL_SOCKET_BAD, 0);

  /* see if the connection request is already here */
  switch(result) {
  case -1: /* error */
    /* let's die here */
    FUNC2(data, "Error while waiting for server connect");
    return CURLE_FTP_ACCEPT_FAILED;
  case 0:  /* Server connect is not received yet */
    break; /* loop */
  default:

    if(result & CURL_CSELECT_IN2) {
      FUNC4(data, "Ready to accept data connection from server\n");
      *received = TRUE;
    }
    else if(result & CURL_CSELECT_IN) {
      FUNC4(data, "Ctrl conn has data while waiting for data conn\n");
      FUNC0(&nread, conn, &ftpcode);

      if(ftpcode/100 > 3)
        return CURLE_FTP_ACCEPT_FAILED;

      return CURLE_WEIRD_SERVER_REPLY;
    }

    break;
  } /* switch() */

  return CURLE_OK;
}