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
struct net_buf_simple {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct net_buf_simple*,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct net_buf_simple*,size_t) ; 

void *FUNC3(struct net_buf_simple *buf, const void *mem,
                             size_t len)
{
    FUNC0("buf %p len %u", buf, len);

    return FUNC1(FUNC2(buf, len), mem, len);
}