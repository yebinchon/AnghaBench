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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  do_more; } ;
struct connectdata {scalar_t__* sock; int /*<<< orphan*/ * sock_accepted; TYPE_1__ bits; struct Curl_easy* data; } ;
struct Curl_sockaddr_storage {int dummy; } ;
struct TYPE_4__ {int (* fsockopt ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sockopt_client; } ;
struct Curl_easy {TYPE_2__ set; } ;
typedef  int curl_socklen_t ;
typedef  scalar_t__ curl_socket_t ;
typedef  int /*<<< orphan*/  add ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_ABORTED_BY_CALLBACK ; 
 int /*<<< orphan*/  CURLE_FTP_PORT_FAILED ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLSOCKTYPE_ACCEPT ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 size_t SECONDARYSOCKET ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,char*) ; 
 scalar_t__ FUNC6 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_easy*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC9(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  curl_socket_t sock = conn->sock[SECONDARYSOCKET];
  curl_socket_t s = CURL_SOCKET_BAD;
#ifdef ENABLE_IPV6
  struct Curl_sockaddr_storage add;
#else
  struct sockaddr_in add;
#endif
  curl_socklen_t size = (curl_socklen_t) sizeof(add);

  if(0 == FUNC6(sock, (struct sockaddr *) &add, &size)) {
    size = sizeof(add);

    s = FUNC2(sock, (struct sockaddr *) &add, &size);
  }
  FUNC0(conn, sock); /* close the first socket */

  if(CURL_SOCKET_BAD == s) {
    FUNC5(data, "Error accept()ing server connect");
    return CURLE_FTP_PORT_FAILED;
  }
  FUNC7(data, "Connection accepted from server\n");
  /* when this happens within the DO state it is important that we mark us as
     not needing DO_MORE anymore */
  conn->bits.do_more = FALSE;

  conn->sock[SECONDARYSOCKET] = s;
  (void)FUNC4(s, TRUE); /* enable non-blocking */
  conn->sock_accepted[SECONDARYSOCKET] = TRUE;

  if(data->set.fsockopt) {
    int error = 0;

    /* activate callback for setting socket options */
    FUNC1(data, true);
    error = data->set.fsockopt(data->set.sockopt_client,
                               s,
                               CURLSOCKTYPE_ACCEPT);
    FUNC1(data, false);

    if(error) {
      FUNC3(conn);
      return CURLE_ABORTED_BY_CALLBACK;
    }
  }

  return CURLE_OK;

}