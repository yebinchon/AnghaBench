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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  OP_Real ; 
 int /*<<< orphan*/  P4_REAL ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Vdbe *v, const char *z, int negateFlag, int iMem){
  if( FUNC0(z!=0) ){
    double value;
    char *zV;
    FUNC3(z, &value, FUNC5(z), SQLITE_UTF8);
    FUNC1( !FUNC4(value) ); /* The new AtoF never returns NaN */
    if( negateFlag ) value = -value;
    zV = FUNC2(v, (char*)&value);
    FUNC6(v, OP_Real, 0, iMem, 0, zV, P4_REAL);
  }
}