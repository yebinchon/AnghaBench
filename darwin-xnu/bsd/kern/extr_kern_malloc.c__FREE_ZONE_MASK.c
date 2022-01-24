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
struct kmzones {scalar_t__ kz_zalloczone; size_t kz_elemsize; } ;

/* Variables and functions */
 scalar_t__ KMZ_MALLOC ; 
 int M_LAST ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 
 struct kmzones* kmzones ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 

void
FUNC3(
	void		*elem,
	size_t		size,
	int		type)
{
	struct kmzones	*kmz;

	if (type >= M_LAST)
		FUNC1("FREE_SIZE");

	kmz = &kmzones[type];
	if (kmz->kz_zalloczone == KMZ_MALLOC)
		FUNC1("free_zone ZONE");

/* XXX */
	if (kmz->kz_elemsize == (size_t)(-1))
		FUNC1("FREE_SIZE XXX");
/* XXX */
	if (size == kmz->kz_elemsize)
		FUNC2(kmz->kz_zalloczone, elem);
	else
		FUNC0(elem, size);
}