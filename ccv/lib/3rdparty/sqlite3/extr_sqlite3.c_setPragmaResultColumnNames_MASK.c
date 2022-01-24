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
typedef  int u8 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_3__ {int nPragCName; int iPragCName; int /*<<< orphan*/  zName; } ;
typedef  TYPE_1__ PragmaName ;

/* Variables and functions */
 int /*<<< orphan*/  COLNAME_NAME ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/ * pragCName ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(
  Vdbe *v,                     /* The query under construction */
  const PragmaName *pPragma    /* The pragma */
){
  u8 n = pPragma->nPragCName;
  FUNC1(v, n==0 ? 1 : n);
  if( n==0 ){
    FUNC0(v, 0, COLNAME_NAME, pPragma->zName, SQLITE_STATIC);
  }else{
    int i, j;
    for(i=0, j=pPragma->iPragCName; i<n; i++, j++){
      FUNC0(v, i, COLNAME_NAME, pragCName[j], SQLITE_STATIC);
    }
  }
}