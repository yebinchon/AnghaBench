#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connectdata {int /*<<< orphan*/  connect_state; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct connectdata*,int,char const*,int) ; 
 scalar_t__ FUNC1 (struct connectdata*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 scalar_t__ FUNC3 (struct connectdata*,int /*<<< orphan*/ ) ; 

CURLcode FUNC4(struct connectdata *conn,
                           int sockindex,
                           const char *hostname,
                           int remote_port)
{
  CURLcode result;
  if(!conn->connect_state) {
    result = FUNC3(conn, FALSE);
    if(result)
      return result;
  }
  result = FUNC0(conn, sockindex, hostname, remote_port);

  if(result || FUNC1(conn))
    FUNC2(conn);

  return result;
}