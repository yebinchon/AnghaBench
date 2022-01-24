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
typedef  int uint64_t ;
struct table {int mask; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(struct table *map, uint64_t bits, char *buf, unsigned buf_len)
{
	size_t	len = 0;
	char	*p = buf;
	int	i;

	for (i = 0; map[i].mask != 0; i++) {
		if ((bits & map[i].mask) == 0)
			continue;
		if (len && ((size_t) (p - buf) < (buf_len - 1)))
			*p++ = ' ';
		len = FUNC1(FUNC2(map[i].name), (size_t)((buf_len-1)-(p-buf)));
		if (len == 0)
			break;
		FUNC0(map[i].name, p, len);
		p += len;
	}
	*p = '\0';
	return buf;
}