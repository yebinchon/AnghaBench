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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct kasan_alloc_header {scalar_t__ magic; int /*<<< orphan*/  user_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIVE_XOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct kasan_alloc_header* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

vm_size_t
FUNC3(vm_offset_t addr)
{
	struct kasan_alloc_header *h = FUNC1(addr);
	FUNC0(h->magic == FUNC2(addr, LIVE_XOR));
	return h->user_size;
}