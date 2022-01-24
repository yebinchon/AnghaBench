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
struct connectdata {int httpversion; } ;
struct TYPE_2__ {int /*<<< orphan*/  expect100header; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  Curl_send_buffer ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*) ; 
 char* FUNC1 (struct connectdata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (struct Curl_easy*,struct connectdata*) ; 

__attribute__((used)) static CURLcode FUNC4(struct Curl_easy *data,
                          struct connectdata *conn,
                          Curl_send_buffer *req_buffer)
{
  CURLcode result = CURLE_OK;
  data->state.expect100header = FALSE; /* default to false unless it is set
                                          to TRUE below */
  if(FUNC3(data, conn) &&
     (conn->httpversion < 20)) {
    /* if not doing HTTP 1.0 or version 2, or disabled explicitly, we add an
       Expect: 100-continue to the headers which actually speeds up post
       operations (as there is one packet coming back from the web server) */
    const char *ptr = FUNC1(conn, "Expect");
    if(ptr) {
      data->state.expect100header =
        FUNC2(ptr, "Expect:", "100-continue");
    }
    else {
      result = FUNC0(&req_buffer,
                                "Expect: 100-continue\r\n");
      if(!result)
        data->state.expect100header = TRUE;
    }
  }

  return result;
}