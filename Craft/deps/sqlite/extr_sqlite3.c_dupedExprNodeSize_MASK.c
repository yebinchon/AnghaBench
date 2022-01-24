#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ zToken; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_IntValue ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(Expr *p, int flags){
  int nByte = FUNC2(p, flags) & 0xfff;
  if( !FUNC0(p, EP_IntValue) && p->u.zToken ){
    nByte += FUNC3(p->u.zToken)+1;
  }
  return FUNC1(nByte);
}