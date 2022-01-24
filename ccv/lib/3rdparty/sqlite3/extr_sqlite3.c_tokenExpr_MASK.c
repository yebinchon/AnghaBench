#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_11__ {int n; int /*<<< orphan*/  z; } ;
typedef  TYPE_2__ Token ;
struct TYPE_10__ {char* zToken; } ;
struct TYPE_13__ {int iAgg; int nHeight; TYPE_1__ u; int /*<<< orphan*/  flags; scalar_t__ op; } ;
struct TYPE_12__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_DblQuoted ; 
 int /*<<< orphan*/  EP_Leaf ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 

__attribute__((used)) static Expr *FUNC5(Parse *pParse, int op, Token t){
    Expr *p = FUNC2(pParse->db, sizeof(Expr)+t.n+1);
    if( p ){
      FUNC1(p, 0, sizeof(Expr));
      p->op = (u8)op;
      p->flags = EP_Leaf;
      p->iAgg = -1;
      p->u.zToken = (char*)&p[1];
      FUNC0(p->u.zToken, t.z, t.n);
      p->u.zToken[t.n] = 0;
      if( FUNC4(p->u.zToken[0]) ){
        if( p->u.zToken[0]=='"' ) p->flags |= EP_DblQuoted;
        FUNC3(p->u.zToken);
      }
#if SQLITE_MAX_EXPR_DEPTH>0
      p->nHeight = 1;
#endif  
    }
    return p;
  }