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
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (void const*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void
FUNC1(void * dest, const void * source)
{
    FUNC0(source, dest, ETHER_ADDR_LEN);
    return;
}