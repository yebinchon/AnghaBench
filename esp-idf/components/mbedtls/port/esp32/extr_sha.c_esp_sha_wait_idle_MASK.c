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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA_1_BUSY_REG ; 
 int /*<<< orphan*/  SHA_256_BUSY_REG ; 
 int /*<<< orphan*/  SHA_384_BUSY_REG ; 
 int /*<<< orphan*/  SHA_512_BUSY_REG ; 

void FUNC1(void)
{
    while(1) {
        if(FUNC0(SHA_1_BUSY_REG) == 0
           && FUNC0(SHA_256_BUSY_REG) == 0
           && FUNC0(SHA_384_BUSY_REG) == 0
           && FUNC0(SHA_512_BUSY_REG) == 0) {
            break;
        }
    }
}