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
struct connectdata {int dummy; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,char*,char const*,...) ; 

__attribute__((used)) static CURLcode FUNC1(struct connectdata *conn,
                                          const char *mech,
                                          const char *initresp)
{
  CURLcode result = CURLE_OK;

  if(initresp) {
    /* Send the AUTHENTICATE command with the initial response */
    result = FUNC0(conn, "AUTHENTICATE %s %s", mech, initresp);
  }
  else {
    /* Send the AUTHENTICATE command */
    result = FUNC0(conn, "AUTHENTICATE %s", mech);
  }

  return result;
}