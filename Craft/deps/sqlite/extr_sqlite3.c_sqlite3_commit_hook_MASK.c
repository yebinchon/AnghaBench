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
struct TYPE_3__ {int (* xCommitCallback ) (void*) ;int /*<<< orphan*/  mutex; void* pCommitArg; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void *FUNC2(
  sqlite3 *db,              /* Attach the hook to this database */
  int (*xCallback)(void*),  /* Function to invoke on each commit */
  void *pArg                /* Argument to the function */
){
  void *pOld;
  FUNC0(db->mutex);
  pOld = db->pCommitArg;
  db->xCommitCallback = xCallback;
  db->pCommitArg = pArg;
  FUNC1(db->mutex);
  return pOld;
}