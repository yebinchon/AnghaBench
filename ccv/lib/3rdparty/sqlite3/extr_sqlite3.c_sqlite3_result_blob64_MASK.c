#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_uint64 ;
struct TYPE_9__ {TYPE_2__* pOut; } ;
typedef  TYPE_3__ sqlite3_context ;
struct TYPE_8__ {TYPE_1__* db; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 void FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,void (*) (void*),TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,void const*,int,int /*<<< orphan*/ ,void (*) (void*)) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(
  sqlite3_context *pCtx, 
  const void *z, 
  sqlite3_uint64 n,
  void (*xDel)(void *)
){
  FUNC1( FUNC4(pCtx->pOut->db->mutex) );
  FUNC1( xDel!=SQLITE_DYNAMIC );
  if( n>0x7fffffff ){
    (void)FUNC2(z, xDel, pCtx);
  }else{
    FUNC3(pCtx, z, (int)n, 0, xDel);
  }
}