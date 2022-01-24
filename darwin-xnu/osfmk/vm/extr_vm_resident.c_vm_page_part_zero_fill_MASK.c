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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_page_t ;
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void
FUNC9(
	vm_page_t	m,
	vm_offset_t	m_pa,
	vm_size_t	len)
{

#if 0
	/*
	 * we don't hold the page queue lock
	 * so this check isn't safe to make
	 */
	VM_PAGE_CHECK(m);
#endif

#ifdef PMAP_ZERO_PART_PAGE_IMPLEMENTED
	pmap_zero_part_page(VM_PAGE_GET_PHYS_PAGE(m), m_pa, len);
#else
	vm_page_t	tmp;
	while (1) {
       		tmp = FUNC5();
		if (tmp == VM_PAGE_NULL) {
			FUNC7(THREAD_UNINT);
			continue;
		}
		break;  
	}
	FUNC8(tmp);
	if(m_pa != 0) {
		FUNC6(m, 0, tmp, 0, m_pa);
	}
	if((m_pa + len) <  PAGE_SIZE) {
		FUNC6(m, m_pa + len, tmp, 
				m_pa + len, PAGE_SIZE - (m_pa + len));
	}
	FUNC4(tmp,m);
	FUNC1(tmp); 
#endif

}