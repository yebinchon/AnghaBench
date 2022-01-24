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
 int /*<<< orphan*/  NODE_LEAF ; 
 scalar_t__* FUNC0 (void*) ; 
 scalar_t__* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 

void FUNC4(void* node) {
  FUNC3(node, NODE_LEAF);
  FUNC2(node, false);
  *FUNC1(node) = 0;
  *FUNC0(node) = 0;  // 0 represents no sibling
}