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
 int COMMON_NODE_HEADER_SIZE ; 
 int LEAF_NODE_CELL_SIZE ; 
 int LEAF_NODE_HEADER_SIZE ; 
 int LEAF_NODE_MAX_CELLS ; 
 int LEAF_NODE_SPACE_FOR_CELLS ; 
 int ROW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void FUNC1() {
  FUNC0("ROW_SIZE: %d\n", ROW_SIZE);
  FUNC0("COMMON_NODE_HEADER_SIZE: %d\n", COMMON_NODE_HEADER_SIZE);
  FUNC0("LEAF_NODE_HEADER_SIZE: %d\n", LEAF_NODE_HEADER_SIZE);
  FUNC0("LEAF_NODE_CELL_SIZE: %d\n", LEAF_NODE_CELL_SIZE);
  FUNC0("LEAF_NODE_SPACE_FOR_CELLS: %d\n", LEAF_NODE_SPACE_FOR_CELLS);
  FUNC0("LEAF_NODE_MAX_CELLS: %d\n", LEAF_NODE_MAX_CELLS);
}