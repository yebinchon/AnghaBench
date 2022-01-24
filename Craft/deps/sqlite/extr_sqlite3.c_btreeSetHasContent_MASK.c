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
struct TYPE_3__ {scalar_t__ nPage; scalar_t__ pHasContent; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ BtShared ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(BtShared *pBt, Pgno pgno){
  int rc = SQLITE_OK;
  if( !pBt->pHasContent ){
    FUNC0( pgno<=pBt->nPage );
    pBt->pHasContent = FUNC1(pBt->nPage);
    if( !pBt->pHasContent ){
      rc = SQLITE_NOMEM;
    }
  }
  if( rc==SQLITE_OK && pgno<=FUNC3(pBt->pHasContent) ){
    rc = FUNC2(pBt->pHasContent, pgno);
  }
  return rc;
}