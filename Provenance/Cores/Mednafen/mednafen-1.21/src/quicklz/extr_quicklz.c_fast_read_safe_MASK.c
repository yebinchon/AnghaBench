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
 unsigned int FUNC0 (void const*,unsigned int) ; 

__attribute__((used)) static __inline unsigned int FUNC1(void const *src, unsigned int bytes, const unsigned char *invalid)
{
#ifdef memory_safe 
	if ((const unsigned char *)src + 4 > (const unsigned char *)invalid)
		return 0xffffffff;
#endif
	invalid = invalid;
	return FUNC0(src, bytes);
}