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
struct TYPE_3__ {int SizeReserved; scalar_t__ Current; scalar_t__ Size; void* Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int INIT_BUF_SIZE ; 
 int /*<<< orphan*/  KS_CURRENT_BUF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEWBUF_COUNT ; 
 void* FUNC1 (int) ; 

BUF *FUNC2()
{
	BUF *b;

	// Memory allocation
	b = FUNC1(sizeof(BUF));
	b->Buf = FUNC1(INIT_BUF_SIZE);
	b->Size = 0;
	b->Current = 0;
	b->SizeReserved = INIT_BUF_SIZE;

	// KS
	FUNC0(KS_NEWBUF_COUNT);
	FUNC0(KS_CURRENT_BUF_COUNT);

	return b;
}