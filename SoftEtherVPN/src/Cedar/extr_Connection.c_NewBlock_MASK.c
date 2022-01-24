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
struct TYPE_3__ {int IsFlooding; int Size; int SizeofData; void* Buf; void* Compressed; scalar_t__ Param1; scalar_t__ Ttl; scalar_t__ PriorityQoS; } ;
typedef  TYPE_1__ BLOCK ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (void*,int,void*,int) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int MAX_PACKET_SIZE ; 
 void* FUNC3 (int) ; 
 void* TRUE ; 
 int FUNC4 (void*,int,void*,int) ; 

BLOCK *FUNC5(void *data, UINT size, int compress)
{
	BLOCK *b;
	// Validate arguments
	if (data == NULL)
	{
		return NULL;
	}

	b = FUNC3(sizeof(BLOCK));

	b->IsFlooding = false;

	b->PriorityQoS = b->Ttl = b->Param1 = 0;

	if (compress == 0)
	{
		// Uncompressed
		b->Compressed = FALSE;
		b->Buf = data;
		b->Size = size;
		b->SizeofData = size;
	}
	else if (compress == 1)
	{
		UINT max_size;

		// Compressed
		b->Compressed = TRUE;
		max_size = FUNC0(size);
		b->Buf = FUNC3(max_size);
		b->Size = FUNC1(b->Buf, max_size, data, size);
		b->SizeofData = size;

		// Discard old data block
		FUNC2(data);
	}
	else
	{
		// Expand
		UINT max_size;

		b->Compressed = FALSE;
		max_size = MAX_PACKET_SIZE;
		b->Buf = FUNC3(max_size);
		b->Size = FUNC4(b->Buf, max_size, data, size);
		b->SizeofData = size;

		// Discard old data
		FUNC2(data);
	}

	return b;
}