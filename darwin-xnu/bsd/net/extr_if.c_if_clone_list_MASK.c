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
typedef  int /*<<< orphan*/  user_addr_t ;
struct if_clone {int /*<<< orphan*/  ifc_name; } ;
typedef  int /*<<< orphan*/  outbuf ;

/* Variables and functions */
 int EINVAL ; 
 int IFNAMSIZ ; 
 struct if_clone* FUNC0 (int /*<<< orphan*/ *) ; 
 struct if_clone* FUNC1 (struct if_clone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  if_cloners ; 
 int if_cloners_count ; 
 int /*<<< orphan*/  ifc_list ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(int count, int *ret_total, user_addr_t dst)
{
	char outbuf[IFNAMSIZ];
	struct if_clone *ifc;
	int error = 0;

	*ret_total = if_cloners_count;
	if (dst == USER_ADDR_NULL) {
		/* Just asking how many there are. */
		return (0);
	}

	if (count < 0)
		return (EINVAL);

	count = (if_cloners_count < count) ? if_cloners_count : count;

	for (ifc = FUNC0(&if_cloners); ifc != NULL && count != 0;
	    ifc = FUNC1(ifc, ifc_list), count--, dst += IFNAMSIZ) {
		FUNC2(outbuf, sizeof(outbuf));
		FUNC4(outbuf, ifc->ifc_name, IFNAMSIZ);
		error = FUNC3(outbuf, dst, IFNAMSIZ);
		if (error)
			break;
	}

	return (error);
}