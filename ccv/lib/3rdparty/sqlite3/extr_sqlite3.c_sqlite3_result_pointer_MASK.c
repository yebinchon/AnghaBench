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
struct TYPE_8__ {TYPE_3__* pOut; } ;
typedef  TYPE_2__ sqlite3_context ;
struct TYPE_9__ {int /*<<< orphan*/  flags; TYPE_1__* db; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_Null ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,void*,char const*,void (*) (void*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(
  sqlite3_context *pCtx,
  void *pPtr,
  const char *zPType,
  void (*xDestructor)(void*)
){
  Mem *pOut = pCtx->pOut;
  FUNC0( FUNC3(pOut->db->mutex) );
  FUNC1(pOut);
  pOut->flags = MEM_Null;
  FUNC2(pOut, pPtr, zPType, xDestructor);
}