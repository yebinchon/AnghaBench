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
typedef  int /*<<< orphan*/  extent_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void const* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(const void *ptr, extent_node_t *node)
{

	FUNC0(FUNC3(node) == ptr);
	FUNC0(!FUNC2(node));
	return (FUNC1(ptr, node));
}