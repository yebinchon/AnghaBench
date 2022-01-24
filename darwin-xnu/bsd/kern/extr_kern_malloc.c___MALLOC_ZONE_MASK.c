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
typedef  size_t vm_size_t ;
typedef  int /*<<< orphan*/  vm_allocation_site_t ;
struct kmzones {scalar_t__ kz_zalloczone; size_t kz_elemsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KMZ_MALLOC ; 
 int M_LAST ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 scalar_t__ FUNC1 (size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct kmzones* kmzones ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void *
FUNC5(
	size_t		size,
	int		type,
	int		flags,
	vm_allocation_site_t *site)
{
	struct kmzones	*kmz;
	void		*elem;

	if (type >= M_LAST)
		FUNC2("_malloc_zone TYPE");

	kmz = &kmzones[type];
	if (kmz->kz_zalloczone == KMZ_MALLOC)
		FUNC2("_malloc_zone ZONE: type = %d", type);

/* XXX */
	if (kmz->kz_elemsize == (size_t)(-1))
		FUNC2("_malloc_zone XXX");
/* XXX */
	if (size == kmz->kz_elemsize)
		if (flags & M_NOWAIT) {
	  		elem = (void *)FUNC4(kmz->kz_zalloczone);
		} else {
	  		elem = (void *)FUNC3(kmz->kz_zalloczone);
		}
	else {
		vm_size_t kalloc_size = size;
		if (size > kalloc_size) {
			elem = NULL;
		} else if (flags & M_NOWAIT) {
			elem = (void *)FUNC1(&kalloc_size, FALSE, site);
		} else {
			elem = (void *)FUNC1(&kalloc_size, TRUE, site);
		}
	}

	if (elem && (flags & M_ZERO))
		FUNC0(elem, size);

	return (elem);
}