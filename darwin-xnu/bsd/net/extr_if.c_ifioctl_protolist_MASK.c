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
typedef  int u_long ;
struct ifnet {int dummy; } ;
struct if_protolistreq64 {int /*<<< orphan*/  ifpl_list; int /*<<< orphan*/  ifpl_count; int /*<<< orphan*/  ifpl_reserved; } ;
struct if_protolistreq32 {int /*<<< orphan*/  ifpl_list; int /*<<< orphan*/  ifpl_count; int /*<<< orphan*/  ifpl_reserved; } ;
typedef  int /*<<< orphan*/  ifpl ;
typedef  struct if_protolistreq64* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  SIOCGIFPROTOLIST32 129 
#define  SIOCGIFPROTOLIST64 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_protolistreq64*,struct if_protolistreq64*,int) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC4(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	int error = 0;

	switch (cmd) {
	case SIOCGIFPROTOLIST32: {		/* struct if_protolistreq32 */
		struct if_protolistreq32 	ifpl;

		FUNC2(data, &ifpl, sizeof(ifpl));
		if (ifpl.ifpl_reserved != 0) {
			error = EINVAL;
			break;
		}
		error = FUNC3(ifp, &ifpl.ifpl_count,
		    FUNC0(ifpl.ifpl_list));
		FUNC2(&ifpl, data, sizeof(ifpl));
		break;
	}
	case SIOCGIFPROTOLIST64: {		/* struct if_protolistreq64 */
		struct if_protolistreq64 	ifpl;

		FUNC2(data, &ifpl, sizeof(ifpl));
		if (ifpl.ifpl_reserved != 0) {
			error = EINVAL;
			break;
		}
		error = FUNC3(ifp, &ifpl.ifpl_count,
		    ifpl.ifpl_list);
		FUNC2(&ifpl, data, sizeof(ifpl));
		break;
	}
	default:
		FUNC1(0);
		/* NOTREACHED */
	}

	return (error);
}