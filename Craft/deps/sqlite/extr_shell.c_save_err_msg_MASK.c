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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(
  sqlite3 *db            /* Database to query */
){
  int nErrMsg = 1+FUNC3(FUNC1(db));
  char *zErrMsg = FUNC2(nErrMsg);
  if( zErrMsg ){
    FUNC0(zErrMsg, FUNC1(db), nErrMsg);
  }
  return zErrMsg;
}