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
struct ifconf64 {int /*<<< orphan*/  ifc_len; int /*<<< orphan*/  ifc_req; } ;
struct ifconf32 {int /*<<< orphan*/  ifc_len; int /*<<< orphan*/  ifc_req; } ;
typedef  int /*<<< orphan*/  ifc ;
typedef  struct ifconf64* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  OSIOCGIFCONF32 131 
#define  OSIOCGIFCONF64 130 
#define  SIOCGIFCONF32 129 
#define  SIOCGIFCONF64 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifconf64*,struct ifconf64*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC4(u_long cmd, caddr_t data)
{
	int error = 0;

	switch (cmd) {
	case OSIOCGIFCONF32:			/* struct ifconf32 */
	case SIOCGIFCONF32: {			/* struct ifconf32 */
		struct ifconf32 ifc;
		FUNC2(data, &ifc, sizeof (ifc));
		error = FUNC3(cmd, FUNC0(ifc.ifc_req),
		    &ifc.ifc_len);
		FUNC2(&ifc, data, sizeof (ifc));
		break;
	}

	case SIOCGIFCONF64:			/* struct ifconf64 */
	case OSIOCGIFCONF64: {			/* struct ifconf64 */
		struct ifconf64 ifc;
		FUNC2(data, &ifc, sizeof (ifc));
		error = FUNC3(cmd, ifc.ifc_req, &ifc.ifc_len);
		FUNC2(&ifc, data, sizeof (ifc));
		break;
	}

	default:
		FUNC1(0);
		/* NOTREACHED */
	}

	return (error);
}