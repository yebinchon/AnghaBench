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
struct TYPE_3__ {scalar_t__ ctl_valid; int /*<<< orphan*/  pp; } ;
struct TYPE_4__ {TYPE_1__ ftpc; } ;
struct connectdata {TYPE_2__ proto; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FTP_QUIT ; 
 int /*<<< orphan*/  FTP_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct connectdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CURLcode FUNC6(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;

  if(conn->proto.ftpc.ctl_valid) {
    result = FUNC0(&conn->proto.ftpc.pp, "%s", "QUIT");
    if(result) {
      FUNC3(conn->data, "Failure sending QUIT command: %s",
            FUNC2(result));
      conn->proto.ftpc.ctl_valid = FALSE; /* mark control connection as bad */
      FUNC1(conn, "QUIT command failed"); /* mark for connection closure */
      FUNC5(conn, FTP_STOP);
      return result;
    }

    FUNC5(conn, FTP_QUIT);

    result = FUNC4(conn);
  }

  return result;
}