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
typedef  int /*<<< orphan*/  MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 

unsigned FUNC3 (void *buffer, int length)
{
	int			digest[4];
	unsigned	val;
	MD4_CTX		ctx;

	FUNC1 (&ctx);
	FUNC2 (&ctx, (unsigned char *)buffer, length);
	FUNC0 ( (unsigned char *)digest, &ctx);
	
	val = digest[0] ^ digest[1] ^ digest[2] ^ digest[3];

	return val;
}