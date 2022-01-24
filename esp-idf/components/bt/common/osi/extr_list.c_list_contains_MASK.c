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
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 void const* FUNC4 (int /*<<< orphan*/  const*) ; 

bool FUNC5(const list_t *list, const void *data)
{
  FUNC0(list != NULL);
  FUNC0(data != NULL);

  for (const list_node_t *node = FUNC1(list); node != FUNC2(list); node = FUNC3(node)) {
    if (FUNC4(node) == data) {
      return true;
    }
  }

  return false;
}