#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  authused; } ;
struct TYPE_10__ {TYPE_4__* conn; } ;
struct imap_conn {int /*<<< orphan*/  mailbox_uidvalidity; int /*<<< orphan*/  mailbox; TYPE_1__ sasl; TYPE_5__ pp; } ;
struct TYPE_7__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_2__ proto; } ;
struct TYPE_8__ {scalar_t__ protoconnstart; } ;
struct TYPE_9__ {TYPE_3__ bits; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn, bool dead_connection)
{
  struct imap_conn *imapc = &conn->proto.imapc;

  /* We cannot send quit unconditionally. If this connection is stale or
     bad in any way, sending quit and waiting around here will make the
     disconnect wait in vain and cause more problems than we need to. */

  /* The IMAP session may or may not have been allocated/setup at this
     point! */
  if(!dead_connection && imapc->pp.conn && imapc->pp.conn->bits.protoconnstart)
    if(!FUNC4(conn))
      (void)FUNC3(conn, TRUE); /* ignore errors on LOGOUT */

  /* Disconnect from the server */
  FUNC0(&imapc->pp);

  /* Cleanup the SASL module */
  FUNC2(conn, imapc->sasl.authused);

  /* Cleanup our connection based variables */
  FUNC1(imapc->mailbox);
  FUNC1(imapc->mailbox_uidvalidity);

  return CURLE_OK;
}