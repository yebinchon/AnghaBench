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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  NodeType ;

/* Variables and functions */
 int NODE_TYPE_OFFSET ; 

void FUNC0(void* node, NodeType type) {
  uint8_t value = type;
  *((uint8_t*)(node + NODE_TYPE_OFFSET)) = value;
}