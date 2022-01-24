#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  n; int /*<<< orphan*/  z; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {void* nType; int /*<<< orphan*/  i64Key; } ;
struct TYPE_8__ {void* nSQLOptr; TYPE_2__ colInfo; TYPE_3__ val; } ;
typedef  TYPE_1__ tSQLExpr ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_2__ SSQLToken ;

/* Variables and functions */
 scalar_t__ TK_ALL ; 
 scalar_t__ TK_BOOL ; 
 scalar_t__ TK_FLOAT ; 
 scalar_t__ TK_ID ; 
 scalar_t__ TK_INTEGER ; 
 scalar_t__ TK_NOW ; 
 scalar_t__ TK_STRING ; 
 void* TK_TIMESTAMP ; 
 scalar_t__ TK_VARIABLE ; 
 void* TSDB_DATA_TYPE_BIGINT ; 
 int /*<<< orphan*/  TSDB_TIME_PRECISION_MICRO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

tSQLExpr *FUNC7(SSQLToken *pAliasToken, int32_t optrType) {
  tSQLExpr *nodePtr = FUNC2(1, sizeof(tSQLExpr));

  if (optrType == TK_INTEGER || optrType == TK_STRING || optrType == TK_FLOAT || optrType == TK_BOOL) {
    FUNC6(pAliasToken->type);

    FUNC4(&nodePtr->val, pAliasToken);
    nodePtr->nSQLOptr = optrType;
  } else if (optrType == TK_NOW) {
    // default use microsecond
    nodePtr->val.i64Key = FUNC5(TSDB_TIME_PRECISION_MICRO);
    nodePtr->val.nType = TSDB_DATA_TYPE_BIGINT;
    nodePtr->nSQLOptr = TK_TIMESTAMP;  // TK_TIMESTAMP used to denote the time value is in microsecond
  } else if (optrType == TK_VARIABLE) {
    int32_t ret = FUNC3(pAliasToken->z, pAliasToken->n, &nodePtr->val.i64Key);
    FUNC0(ret);

    nodePtr->val.nType = TSDB_DATA_TYPE_BIGINT;
    nodePtr->nSQLOptr = TK_TIMESTAMP;
  } else {  // it must be the column name (tk_id) if it is not the number
    FUNC1(optrType == TK_ID || optrType == TK_ALL);
    if (pAliasToken != NULL) {
      nodePtr->colInfo = *pAliasToken;
    }

    nodePtr->nSQLOptr = optrType;
  }
  return nodePtr;
}