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
typedef  int /*<<< orphan*/  SAcctObj ;

/* Variables and functions */
 int TSDB_CODE_TOO_MANY_USERS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int tsMaxUsers ; 
 int /*<<< orphan*/  userSdb ; 

int FUNC2(SAcctObj *pAcct) {
  int numOfUsers = FUNC1(userSdb);
  if (numOfUsers >= tsMaxUsers) {
    FUNC0("numOfUsers:%d, exceed tsMaxUsers:%d", numOfUsers, tsMaxUsers);
    return TSDB_CODE_TOO_MANY_USERS;
  }
  return 0;
}