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
typedef  int int32 ;
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Const ;

/* Variables and functions */
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int const,int const) ; 

__attribute__((used)) static Const *
FUNC4(int32 integerValue)
{
	const int typeCollationId = FUNC1(INT4OID);
	const int16 typeLength = FUNC2(INT4OID);
	const int32 typeModifier = -1;
	const bool typeIsNull = false;
	const bool typePassByValue = true;

	Datum integerDatum = FUNC0(integerValue);
	Const *integerConst = FUNC3(INT4OID, typeModifier, typeCollationId, typeLength,
									integerDatum, typeIsNull, typePassByValue);

	return integerConst;
}