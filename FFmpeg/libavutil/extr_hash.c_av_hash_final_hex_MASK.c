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
typedef  int uint8_t ;
struct AVHashContext {int dummy; } ;

/* Variables and functions */
 int AV_HASH_MAX_SIZE ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct AVHashContext*,int*) ; 
 unsigned int FUNC2 (struct AVHashContext*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,char*,int) ; 

void FUNC4(struct AVHashContext *ctx, uint8_t *dst, int size)
{
    uint8_t buf[AV_HASH_MAX_SIZE];
    unsigned rsize = FUNC2(ctx), i;

    FUNC1(ctx, buf);
    for (i = 0; i < FUNC0(rsize, size / 2); i++)
        FUNC3(dst + i * 2, size - i * 2, "%02x", buf[i]);
}