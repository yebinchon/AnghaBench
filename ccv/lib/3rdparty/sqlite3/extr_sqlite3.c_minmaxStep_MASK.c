#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_6__ {int /*<<< orphan*/  db; scalar_t__ flags; } ;
typedef  TYPE_1__ Mem ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *context, 
  int NotUsed, 
  sqlite3_value **argv
){
  Mem *pArg  = (Mem *)argv[0];
  Mem *pBest;
  FUNC0(NotUsed);

  pBest = (Mem *)FUNC5(context, sizeof(*pBest));
  if( !pBest ) return;

  if( FUNC8(argv[0])==SQLITE_NULL ){
    if( pBest->flags ) FUNC3(context);
  }else if( pBest->flags ){
    int max;
    int cmp;
    CollSeq *pColl = FUNC1(context);
    /* This step function is used for both the min() and max() aggregates,
    ** the only difference between the two being that the sense of the
    ** comparison is inverted. For the max() aggregate, the
    ** sqlite3_user_data() function returns (void *)-1. For min() it
    ** returns (void *)db, where db is the sqlite3* database pointer.
    ** Therefore the next statement sets variable 'max' to 1 for the max()
    ** aggregate, or 0 for min().
    */
    max = FUNC7(context)!=0;
    cmp = FUNC2(pBest, pArg, pColl);
    if( (max && cmp<0) || (!max && cmp>0) ){
      FUNC4(pBest, pArg);
    }else{
      FUNC3(context);
    }
  }else{
    pBest->db = FUNC6(context);
    FUNC4(pBest, pArg);
  }
}