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
struct socket {int dummy; } ;
struct so_aidreq64 {int /*<<< orphan*/  sar_aidp; int /*<<< orphan*/  sar_cnt; } ;
struct so_aidreq32 {int /*<<< orphan*/  sar_aidp; int /*<<< orphan*/  sar_cnt; } ;
typedef  struct so_aidreq64* caddr_t ;

/* Variables and functions */
#define  SIOCGASSOCIDS32 129 
#define  SIOCGASSOCIDS64 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct so_aidreq64*,struct so_aidreq64*,int) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC3(struct socket *so, u_long cmd, caddr_t data)
{
	int error = 0;
	union {
		struct so_aidreq32 a32;
		struct so_aidreq64 a64;
	} u;

	FUNC0(so != NULL);

	switch (cmd) {
	case SIOCGASSOCIDS32:		/* struct so_aidreq32 */
		FUNC1(data, &u.a32, sizeof (u.a32));
		error = FUNC2(so, &u.a32.sar_cnt, u.a32.sar_aidp);
		if (error == 0)
			FUNC1(&u.a32, data, sizeof (u.a32));
		break;

	case SIOCGASSOCIDS64:		/* struct so_aidreq64 */
		FUNC1(data, &u.a64, sizeof (u.a64));
		error = FUNC2(so, &u.a64.sar_cnt, u.a64.sar_aidp);
		if (error == 0)
			FUNC1(&u.a64, data, sizeof (u.a64));
		break;

	default:
		FUNC0(0);
		/* NOTREACHED */
	}

	return (error);
}