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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (void*,scalar_t__) ; 
 scalar_t__* FUNC2 (void*) ; 
 scalar_t__* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

uint32_t* FUNC5(void* node, uint32_t child_num) {
  uint32_t num_keys = *FUNC2(node);
  if (child_num > num_keys) {
    FUNC4("Tried to access child_num %d > num_keys %d\n", child_num, num_keys);
    FUNC0(EXIT_FAILURE);
  } else if (child_num == num_keys) {
    return FUNC3(node);
  } else {
    return FUNC1(node, child_num);
  }
}