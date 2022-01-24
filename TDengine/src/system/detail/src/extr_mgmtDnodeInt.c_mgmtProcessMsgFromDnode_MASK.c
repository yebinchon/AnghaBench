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
typedef  int /*<<< orphan*/  SIntMsg ;
typedef  int /*<<< orphan*/  SDnodeObj ;

/* Variables and functions */
 int TSDB_MSG_TYPE_ALTER_STREAM_RSP ; 
 int TSDB_MSG_TYPE_CFG_PNODE_RSP ; 
 int TSDB_MSG_TYPE_CREATE_RSP ; 
 int TSDB_MSG_TYPE_FREE_VNODE_RSP ; 
 int TSDB_MSG_TYPE_METER_CFG ; 
 int TSDB_MSG_TYPE_REMOVE_RSP ; 
 int TSDB_MSG_TYPE_VPEERS_RSP ; 
 int TSDB_MSG_TYPE_VPEER_CFG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * taosMsg ; 

void FUNC6(char *content, int msgLen, int msgType, SDnodeObj *pObj) {
  if (msgType == TSDB_MSG_TYPE_METER_CFG) {
    FUNC3(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_VPEER_CFG) {
    FUNC5(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_CREATE_RSP) {
    FUNC1(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_REMOVE_RSP) {
    // do nothing
  } else if (msgType == TSDB_MSG_TYPE_VPEERS_RSP) {
    FUNC4(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_FREE_VNODE_RSP) {
    FUNC2(content, msgLen - sizeof(SIntMsg), pObj);
  } else if (msgType == TSDB_MSG_TYPE_CFG_PNODE_RSP) {
    // do nothing;
  } else if (msgType == TSDB_MSG_TYPE_ALTER_STREAM_RSP) {
    // do nothing;
  } else {
    FUNC0("%s from dnode is not processed", taosMsg[msgType]);
  }
}