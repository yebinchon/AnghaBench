#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  console_buf_t ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ buffer; scalar_t__ write_ptr; scalar_t__ read_ptr; scalar_t__ used; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_BUF_FREE_HEX ; 
 int /*<<< orphan*/  KERN_CONSOLE_BUF_SIZE ; 
 int /*<<< orphan*/  KERN_CONSOLE_RING_SIZE ; 
 int KERN_SUCCESS ; 
 int MAX_CPU_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_OSFMK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cnputc_lock ; 
 TYPE_1__ console_ring ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kernel_map ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void
FUNC6(void)
{
	int ret, i;
	uint32_t * p;

	if (!FUNC0(0, KERN_CONSOLE_RING_SIZE, (UInt32 *)&console_ring.len))
		return;

	FUNC1(console_ring.len > 0);

	ret = FUNC4(kernel_map, (vm_offset_t *)&console_ring.buffer, KERN_CONSOLE_BUF_SIZE, VM_KERN_MEMORY_OSFMK);
	if (ret != KERN_SUCCESS) {
		FUNC5("console_ring_init() failed to allocate ring buffer, error %d\n", ret);
	}

	/* setup memory for per cpu console buffers */
	for (i = 0; i < MAX_CPU_SLOTS; i++) {
		p  = (uint32_t *)((uintptr_t)console_ring.buffer + console_ring.len + (i * sizeof(console_buf_t)));
		*p = CPU_BUF_FREE_HEX;
	}

	console_ring.used      = 0;
	console_ring.read_ptr  = console_ring.buffer;
	console_ring.write_ptr = console_ring.buffer;
	FUNC2();
	FUNC3(&cnputc_lock);
}