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
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  DTEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,void**,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (char const*,void*,unsigned int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ kSuccess ; 
 int /*<<< orphan*/  FUNC3 (void*,void**,unsigned int) ; 

boolean_t
FUNC4(
	const char	*property_name,
	void		*property_ptr,
	unsigned int max_property)
{
	DTEntry		dte;
	void		**property_data;
	unsigned int property_size;

	/*
	 * Look for the property using the PE DT support.
	 */
	if (kSuccess == FUNC1(NULL, "/defaults", &dte)) {

		/*
		 * We have a /defaults node, look for the named property.
		 */
		if (kSuccess != FUNC0(dte, property_name, (void **)&property_data, &property_size))
			return FALSE;

		/*
		 * This would be a fine place to do smart argument size management for 32/64
		 * translation, but for now we'll insist that callers know how big their
		 * default values are.
		 */
		if (property_size > max_property)
			return FALSE;

		/*
		 * Copy back the precisely-sized result.
		 */
		FUNC3(property_ptr, property_data, property_size);
		return TRUE;
	}

	/*
	 * Look for the property using I/O Kit's DT support.
	 */
	return FUNC2(property_name, property_ptr, max_property) ? FALSE : TRUE;
}