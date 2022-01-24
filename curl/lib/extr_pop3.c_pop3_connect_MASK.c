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
struct pingpong {struct connectdata* conn; int /*<<< orphan*/  endofresp; int /*<<< orphan*/  statemach_act; int /*<<< orphan*/  response_time; } ;
struct pop3_conn {int /*<<< orphan*/  sasl; int /*<<< orphan*/  preftype; struct pingpong pp; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct pingpong*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  POP3_SERVERGREET ; 
 int /*<<< orphan*/  POP3_TYPE_ANY ; 
 int /*<<< orphan*/  RESP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,char*) ; 
 int /*<<< orphan*/  pop3_endofresp ; 
 scalar_t__ FUNC3 (struct connectdata*,int*) ; 
 scalar_t__ FUNC4 (struct connectdata*) ; 
 int /*<<< orphan*/  pop3_statemach_act ; 
 int /*<<< orphan*/  saslpop3 ; 
 int /*<<< orphan*/  FUNC5 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  struct pingpong *pp = &pop3c->pp;

  *done = FALSE; /* default to not done yet */

  /* We always support persistent connections in POP3 */
  FUNC2(conn, "POP3 default");

  /* Set the default response time-out */
  pp->response_time = RESP_TIMEOUT;
  pp->statemach_act = pop3_statemach_act;
  pp->endofresp = pop3_endofresp;
  pp->conn = conn;

  /* Set the default preferred authentication type and mechanism */
  pop3c->preftype = POP3_TYPE_ANY;
  FUNC1(&pop3c->sasl, &saslpop3);

  /* Initialise the pingpong layer */
  FUNC0(pp);

  /* Parse the URL options */
  result = FUNC4(conn);
  if(result)
    return result;

  /* Start off waiting for the server greeting response */
  FUNC5(conn, POP3_SERVERGREET);

  result = FUNC3(conn, done);

  return result;
}