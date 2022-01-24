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
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {scalar_t__ use_ssl; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef  int /*<<< orphan*/  pop3state ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_USE_SSL_FAILED ; 
 scalar_t__ CURLUSESSL_TRY ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 

__attribute__((used)) static CURLcode FUNC3(struct connectdata *conn,
                                         int pop3code,
                                         pop3state instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate; /* no use for this yet */

  if(pop3code != '+') {
    if(data->set.use_ssl != CURLUSESSL_TRY) {
      FUNC0(data, "STARTTLS denied");
      result = CURLE_USE_SSL_FAILED;
    }
    else
      result = FUNC1(conn);
  }
  else
    result = FUNC2(conn);

  return result;
}