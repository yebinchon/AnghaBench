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
typedef  int /*<<< orphan*/  heap_trace_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_LEAK_GENERAL ; 
 int /*<<< orphan*/  CONFIG_UNITY_CRITICAL_LEAK_LEVEL_GENERAL ; 
 int /*<<< orphan*/  CONFIG_UNITY_WARN_LEAK_LEVEL_GENERAL ; 
 int /*<<< orphan*/  TYPE_LEAK_CRITICAL ; 
 int /*<<< orphan*/  TYPE_LEAK_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
// If heap tracing is enabled in kconfig, leak trace the test
#ifdef CONFIG_HEAP_TRACING
    const size_t num_heap_records = 80;
    static heap_trace_record_t *record_buffer;
    if (!record_buffer) {
        record_buffer = malloc(sizeof(heap_trace_record_t) * num_heap_records);
        assert(record_buffer);
        heap_trace_init_standalone(record_buffer, num_heap_records);
    }
#endif

    FUNC4("%s", ""); /* sneakily lazy-allocate the reent structure for this test task */

#ifdef CONFIG_APP_BUILD_USE_FLASH_SECTIONS
    /* TODO: add sufficient startup code in case of building an ELF file, so that
     * flash cache is initialized and can work in such mode.
     * For now this is disabled to allow running unit tests which don't require
     * flash cache related operations.
     */
    get_test_data_partition();  /* allocate persistent partition table structures */
#endif // CONFIG_APP_BUILD_USE_FLASH_SECTIONS

    FUNC6();
    FUNC5(CONFIG_UNITY_CRITICAL_LEAK_LEVEL_GENERAL, TYPE_LEAK_CRITICAL, COMP_LEAK_GENERAL);
    FUNC5(CONFIG_UNITY_WARN_LEAK_LEVEL_GENERAL, TYPE_LEAK_WARNING, COMP_LEAK_GENERAL);
}