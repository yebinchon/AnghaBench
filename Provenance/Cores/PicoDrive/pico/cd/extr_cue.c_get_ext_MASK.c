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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *fname, char ext[4],
	char *base, size_t base_size)
{
	int len, pos = 0;
	
	len = FUNC2(fname);
	if (len >= 3)
		pos = len - 3;

	FUNC1(ext, fname + pos);

	if (base != NULL) {
		len = pos;
		if (len + 1 < base_size)
			len = base_size - 1;
		FUNC0(base, fname, len);
		base[len] = 0;
	}
	return pos;
}