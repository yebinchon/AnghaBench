#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct connectdata {int /*<<< orphan*/  transport; TYPE_2__* handler; struct Curl_easy* data; } ;
struct HTTP {int /*<<< orphan*/  form; } ;
struct TYPE_4__ {scalar_t__ httpversion; } ;
struct TYPE_6__ {struct HTTP* protop; } ;
struct Curl_easy {TYPE_1__ set; TYPE_3__ req; } ;
struct TYPE_5__ {int flags; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connectdata*) ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLE_URL_MALFORMAT ; 
 scalar_t__ CURL_HTTP_VERSION_3 ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int PROTOPT_SSL ; 
 int /*<<< orphan*/  TRNSPRT_QUIC ; 
 struct HTTP* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct Curl_easy*,char*) ; 

__attribute__((used)) static CURLcode FUNC7(struct connectdata *conn)
{
  /* allocate the HTTP-specific struct for the Curl_easy, only to survive
     during this request */
  struct HTTP *http;
  struct Curl_easy *data = conn->data;
  FUNC4(data->req.protop == NULL);

  http = FUNC5(1, sizeof(struct HTTP));
  if(!http)
    return CURLE_OUT_OF_MEMORY;

  FUNC3(&http->form, conn->data);
  data->req.protop = http;

  if(data->set.httpversion == CURL_HTTP_VERSION_3) {
    if(conn->handler->flags & PROTOPT_SSL)
      /* Only go HTTP/3 directly on HTTPS URLs. It needs a UDP socket and does
         the QUIC dance. */
      conn->transport = TRNSPRT_QUIC;
    else {
      FUNC6(data, "HTTP/3 requested for non-HTTPS URL");
      return CURLE_URL_MALFORMAT;
    }
  }
  else {
    if(!FUNC0(conn))
      /* if not already multi-using, setup connection details */
      FUNC1(conn);
    FUNC2(data);
  }
  return CURLE_OK;
}