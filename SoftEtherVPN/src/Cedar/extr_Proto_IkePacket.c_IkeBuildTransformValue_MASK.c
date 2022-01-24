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
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  size_or_value ;
typedef  int /*<<< orphan*/  af_bit ;
typedef  int USHORT ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_3__ {int Type; int Value; } ;
typedef  TYPE_1__ IKE_PACKET_TRANSFORM_VALUE ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 

BUF *FUNC4(IKE_PACKET_TRANSFORM_VALUE *v)
{
	BUF *b;
	UCHAR af_bit, type;
	USHORT size_or_value;
	// Validate arguments
	if (v == NULL)
	{
		return NULL;
	}

	type = v->Type;

	if (v->Value >= 65536)
	{
		// 32 bit
		af_bit = 0;
		size_or_value = FUNC0(sizeof(UINT));
	}
	else
	{
		// 16 bit
		af_bit = 0x80;
		size_or_value = FUNC0((USHORT)v->Value);
	}

	b = FUNC2();
	FUNC3(b, &af_bit, sizeof(af_bit));
	FUNC3(b, &type, sizeof(type));
	FUNC3(b, &size_or_value, sizeof(size_or_value));

	if (af_bit == 0)
	{
		UINT value = FUNC1(v->Value);
		FUNC3(b, &value, sizeof(UINT));
	}

	return b;
}