#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int isError; TYPE_3__ s; } ;
typedef  TYPE_1__ sqlite3_context ;

/* Variables and functions */
 int MEM_Null ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(sqlite3_context *pCtx, int errCode){
  pCtx->isError = errCode;
  if( pCtx->s.flags & MEM_Null ){
    FUNC1(&pCtx->s, FUNC0(errCode), -1, 
                         SQLITE_UTF8, SQLITE_STATIC);
  }
}