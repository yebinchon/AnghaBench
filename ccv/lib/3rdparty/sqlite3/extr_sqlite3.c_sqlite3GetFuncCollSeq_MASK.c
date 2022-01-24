#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int iOp; TYPE_1__* pVdbe; } ;
typedef  TYPE_3__ sqlite3_context ;
struct TYPE_7__ {int /*<<< orphan*/ * pColl; } ;
struct TYPE_9__ {scalar_t__ opcode; scalar_t__ p4type; TYPE_2__ p4; } ;
typedef  TYPE_4__ VdbeOp ;
struct TYPE_6__ {TYPE_4__* aOp; } ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 scalar_t__ OP_CollSeq ; 
 scalar_t__ P4_COLLSEQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static CollSeq *FUNC1(sqlite3_context *context){
  VdbeOp *pOp;
  FUNC0( context->pVdbe!=0 );
  pOp = &context->pVdbe->aOp[context->iOp-1];
  FUNC0( pOp->opcode==OP_CollSeq );
  FUNC0( pOp->p4type==P4_COLLSEQ );
  return pOp->p4.pColl;
}