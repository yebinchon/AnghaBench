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
struct TYPE_3__ {int /*<<< orphan*/  pp; } ;
struct TYPE_4__ {TYPE_1__ pop3c; } ;
struct connectdata {char* passwd; TYPE_2__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  pop3state ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_LOGIN_DENIED ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  POP3_PASS ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC3(struct connectdata *conn, int pop3code,
                                     pop3state instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate; /* no use for this yet */

  if(pop3code != '+') {
    FUNC1(data, "Access denied. %c", pop3code);
    result = CURLE_LOGIN_DENIED;
  }
  else
    /* Send the PASS command */
    result = FUNC0(&conn->proto.pop3c.pp, "PASS %s",
                           conn->passwd ? conn->passwd : "");
  if(!result)
    FUNC2(conn, POP3_PASS);

  return result;
}