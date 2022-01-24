#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* count; int* state; } ;
typedef  int /*<<< orphan*/  POINTER ;
typedef  TYPE_1__ MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,int) ; 
 unsigned char* PADDING ; 

void FUNC3 (unsigned char digest[16], MD4_CTX *context)
{
	unsigned char bits[8];
	unsigned int index, padLen;

	/* Save number of bits */
	FUNC1 (bits, context->count, 8);

	/* Pad out to 56 mod 64.*/
	index = (unsigned int)((context->count[0] >> 3) & 0x3f);
	padLen = (index < 56) ? (56 - index) : (120 - index);
	FUNC2 (context, PADDING, padLen);

	/* Append length (before padding) */
	FUNC2 (context, bits, 8);
	
	/* Store state in digest */
	FUNC1 (digest, context->state, 16);

	/* Zeroize sensitive information.*/
	FUNC0 ((POINTER)context, 0, sizeof (*context));
}