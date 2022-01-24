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
typedef  int u32 ;
struct TYPE_4__ {int* count; int* state; unsigned char* buffer; } ;
typedef  TYPE_1__ SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

void 
FUNC2(unsigned char digest[20], SHA1_CTX* context)
{
	u32 i;
	unsigned char finalcount[8];

	for (i = 0; i < 8; i++) {
		finalcount[i] = (unsigned char)
			((context->count[(i >= 4 ? 0 : 1)] >>
			  ((3-(i & 3)) * 8) ) & 255);  /* Endian independent */
	}
	FUNC0(context, (unsigned char *) "\200", 1);
	while ((context->count[0] & 504) != 448) {
		FUNC0(context, (unsigned char *) "\0", 1);
	}
	FUNC0(context, finalcount, 8);  /* Should cause a SHA1Transform()
					      */
	for (i = 0; i < 20; i++) {
		digest[i] = (unsigned char)
			((context->state[i >> 2] >> ((3 - (i & 3)) * 8)) &
			 255);
	}
	/* Wipe variables */
	i = 0;
	FUNC1(context->buffer, 0, 64);
	FUNC1(context->state, 0, 20);
	FUNC1(context->count, 0, 8);
	FUNC1(finalcount, 0, 8);
}