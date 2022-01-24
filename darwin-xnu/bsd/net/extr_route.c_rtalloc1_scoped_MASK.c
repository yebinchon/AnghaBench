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
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 struct rtentry* FUNC3 (struct sockaddr*,int,int /*<<< orphan*/ ,unsigned int) ; 

struct rtentry *
FUNC4(struct sockaddr *dst, int report, uint32_t ignflags,
    unsigned int ifscope)
{
	struct rtentry *entry;
	FUNC0(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
	FUNC1(rnh_lock);
	entry = FUNC3(dst, report, ignflags, ifscope);
	FUNC2(rnh_lock);
	return (entry);
}