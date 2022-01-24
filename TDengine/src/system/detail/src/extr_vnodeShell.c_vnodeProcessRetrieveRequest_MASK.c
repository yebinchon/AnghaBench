#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* msg; int /*<<< orphan*/  fp; int /*<<< orphan*/ * ahandle; } ;
typedef  int /*<<< orphan*/  SShellObj ;
typedef  TYPE_1__ SSchedMsg ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  queryQhandle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  vnodeExecuteRetrieveReq ; 

int FUNC3(char *pMsg, int msgLen, SShellObj *pObj) {
  SSchedMsg schedMsg;

  char *msg = FUNC0(msgLen);
  FUNC1(msg, pMsg, msgLen);
  schedMsg.msg = msg;
  schedMsg.ahandle = pObj;
  schedMsg.fp = vnodeExecuteRetrieveReq;
  FUNC2(queryQhandle, &schedMsg);

  return msgLen;
}