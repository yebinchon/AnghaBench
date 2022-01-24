#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* pOut; } ;
typedef  TYPE_2__ sqlite3_context ;
struct TYPE_7__ {unsigned int eSubtype; int /*<<< orphan*/  flags; TYPE_1__* db; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_Subtype ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(sqlite3_context *pCtx, unsigned int eSubtype){
  Mem *pOut = pCtx->pOut;
  FUNC0( FUNC1(pOut->db->mutex) );
  pOut->eSubtype = eSubtype & 0xff;
  pOut->flags |= MEM_Subtype;
}