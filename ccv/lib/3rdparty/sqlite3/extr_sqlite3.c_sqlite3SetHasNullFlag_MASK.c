#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_TYPEOFARG ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(Vdbe *v, int iCur, int regHasNull){
  int addr1;
  FUNC3(v, OP_Integer, 0, regHasNull);
  addr1 = FUNC2(v, OP_Rewind, iCur); FUNC1(v);
  FUNC4(v, OP_Column, iCur, 0, regHasNull);
  FUNC5(v, OPFLAG_TYPEOFARG);
  FUNC0((v, "first_entry_in(%d)", iCur));
  FUNC6(v, addr1);
}