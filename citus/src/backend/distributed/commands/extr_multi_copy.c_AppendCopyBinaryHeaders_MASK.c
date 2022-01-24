#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_5__ {int /*<<< orphan*/  rowcontext; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__* CopyOutState ;

/* Variables and functions */
 int /*<<< orphan*/  BinarySignature ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(CopyOutState headerOutputState)
{
	const int32 zero = 0;
	MemoryContext oldContext = FUNC2(headerOutputState->rowcontext);

	/* Signature */
	FUNC0(headerOutputState, BinarySignature, 11);

	/* Flags field (no OIDs) */
	FUNC1(headerOutputState, zero);

	/* No header extension */
	FUNC1(headerOutputState, zero);

	FUNC2(oldContext);
}