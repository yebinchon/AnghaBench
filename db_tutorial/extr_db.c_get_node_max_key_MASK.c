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

/* Variables and functions */
#define  NODE_INTERNAL 129 
#define  NODE_LEAF 128 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 int /*<<< orphan*/ * FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (void*) ; 

uint32_t FUNC5(void* node) {
  switch (FUNC0(node)) {
    case NODE_INTERNAL:
      return *FUNC1(node, *FUNC2(node) - 1);
    case NODE_LEAF:
      return *FUNC3(node, *FUNC4(node) - 1);
  }
}