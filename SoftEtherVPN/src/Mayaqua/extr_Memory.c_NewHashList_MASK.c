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
typedef  int UINT ;
struct TYPE_3__ {int Bits; int Size; int /*<<< orphan*/  AllList; int /*<<< orphan*/ * CompareProc; int /*<<< orphan*/ * GetHashProc; void* Entries; int /*<<< orphan*/  Ref; int /*<<< orphan*/  Lock; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ HASH_LIST ;
typedef  int /*<<< orphan*/  GET_HASH ;
typedef  int /*<<< orphan*/  COMPARE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int) ; 
 void* FUNC5 (int) ; 

HASH_LIST *FUNC6(GET_HASH *get_hash_proc, COMPARE *compare_proc, UINT bits, bool make_list)
{
	HASH_LIST *h;
	// Validate arguments
	if (get_hash_proc == NULL || compare_proc == NULL)
	{
		return NULL;
	}
	if (bits == 0)
	{
		bits = 16;
	}

	bits = FUNC0(bits, 31);

	h = FUNC5(sizeof(HASH_LIST));

	h->Bits = bits;
	h->Size = FUNC4(2, bits);

	h->Lock = FUNC2();
	h->Ref = FUNC3();

	h->Entries = FUNC5(sizeof(LIST *) * h->Size);

	h->GetHashProc = get_hash_proc;
	h->CompareProc = compare_proc;

	if (make_list)
	{
		h->AllList = FUNC1(NULL);
	}

	return h;
}