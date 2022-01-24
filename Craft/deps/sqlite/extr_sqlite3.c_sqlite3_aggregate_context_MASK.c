#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* db; } ;
struct TYPE_14__ {TYPE_4__* pFunc; TYPE_6__* pMem; TYPE_2__ s; } ;
typedef  TYPE_5__ sqlite3_context ;
struct TYPE_12__ {TYPE_4__* pDef; } ;
struct TYPE_15__ {int flags; scalar_t__ z; TYPE_3__ u; } ;
struct TYPE_13__ {scalar_t__ xStep; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_6__ Mem ;

/* Variables and functions */
 int MEM_Agg ; 
 int MEM_Null ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void *FUNC6(sqlite3_context *p, int nByte){
  Mem *pMem;
  FUNC0( p && p->pFunc && p->pFunc->xStep );
  FUNC0( FUNC4(p->s.db->mutex) );
  pMem = p->pMem;
  FUNC5( nByte<0 );
  if( (pMem->flags & MEM_Agg)==0 ){
    if( nByte<=0 ){
      FUNC3(pMem);
      pMem->flags = MEM_Null;
      pMem->z = 0;
    }else{
      FUNC2(pMem, nByte, 0);
      pMem->flags = MEM_Agg;
      pMem->u.pDef = p->pFunc;
      if( pMem->z ){
        FUNC1(pMem->z, 0, nByte);
      }
    }
  }
  return (void*)pMem->z;
}