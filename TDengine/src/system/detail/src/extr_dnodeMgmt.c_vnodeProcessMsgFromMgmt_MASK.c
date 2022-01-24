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
typedef  int /*<<< orphan*/  SMgmtObj ;

/* Variables and functions */
 int TSDB_MSG_TYPE_ALTER_STREAM ; 
 int TSDB_MSG_TYPE_CFG_PNODE ; 
 int TSDB_MSG_TYPE_CREATE ; 
 int TSDB_MSG_TYPE_FREE_VNODE ; 
 int TSDB_MSG_TYPE_GRANT_RSP ; 
 int TSDB_MSG_TYPE_METER_CFG_RSP ; 
 int TSDB_MSG_TYPE_REMOVE ; 
 int TSDB_MSG_TYPE_VPEERS ; 
 int TSDB_MSG_TYPE_VPEER_CFG_RSP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * taosMsg ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *) ; 

void FUNC9(char *content, int msgLen, int msgType, SMgmtObj *pObj) {
  if (msgType == TSDB_MSG_TYPE_CREATE) {
    FUNC3(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_VPEERS) {
    FUNC8(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_VPEER_CFG_RSP) {
    FUNC7(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_METER_CFG_RSP) {
    FUNC5(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_REMOVE) {
    FUNC6(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_FREE_VNODE) {
    FUNC4(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_CFG_PNODE) {
    FUNC2(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_ALTER_STREAM) {
    FUNC1(content, msgLen, pObj);
  } else if (msgType == TSDB_MSG_TYPE_GRANT_RSP) {
    // do nothing
  } else {
    FUNC0("%s is not processed", taosMsg[msgType]);
  }
}