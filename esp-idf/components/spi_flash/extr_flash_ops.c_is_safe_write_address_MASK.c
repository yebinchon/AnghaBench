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
 int /*<<< orphan*/  UNSAFE_WRITE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 

__attribute__((used)) static __attribute__((unused)) bool FUNC1(size_t addr, size_t size)
{
    if (!FUNC0(addr, size)) {
        UNSAFE_WRITE_ADDRESS;
    }
    return true;
}