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
struct imap_conn {scalar_t__ state; scalar_t__ ssldone; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connectdata*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FIRSTSOCKET ; 
 scalar_t__ IMAP_UPGRADETLS ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,scalar_t__) ; 

__attribute__((used)) static CURLcode FUNC4(struct connectdata *conn)
{
  /* Start the SSL connection */
  struct imap_conn *imapc = &conn->proto.imapc;
  CURLcode result = FUNC0(conn, FIRSTSOCKET,
                                                 &imapc->ssldone);

  if(!result) {
    if(imapc->state != IMAP_UPGRADETLS)
      FUNC3(conn, IMAP_UPGRADETLS);

    if(imapc->ssldone) {
      FUNC2(conn);
      result = FUNC1(conn);
    }
  }

  return result;
}