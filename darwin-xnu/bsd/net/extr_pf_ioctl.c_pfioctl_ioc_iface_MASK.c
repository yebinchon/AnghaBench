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
typedef  int u_long ;
struct proc {int dummy; } ;
struct pfioc_iface_64 {int pfiio_esize; char* pfiio_name; int /*<<< orphan*/  pfiio_flags; int /*<<< orphan*/  pfiio_size; int /*<<< orphan*/  pfiio_buffer; } ;
struct pfioc_iface_32 {int pfiio_esize; char* pfiio_name; int /*<<< orphan*/  pfiio_flags; int /*<<< orphan*/  pfiio_size; int /*<<< orphan*/  pfiio_buffer; } ;
struct pfi_uif {int dummy; } ;

/* Variables and functions */
#define  DIOCCLRIFFLAG 130 
#define  DIOCIGETIFACES 129 
#define  DIOCSETIFFLAG 128 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct proc*) ; 

__attribute__((used)) static int
FUNC5(u_long cmd, struct pfioc_iface_32 *io32,
    struct pfioc_iface_64 *io64, struct proc *p)
{
	int p64 = FUNC4(p);
	int error = 0;

	switch (cmd) {
	case DIOCIGETIFACES: {
		user_addr_t buf;
		int esize;

		buf = (p64 ? io64->pfiio_buffer : io32->pfiio_buffer);
		esize = (p64 ? io64->pfiio_esize : io32->pfiio_esize);

		/* esize must be that of the user space version of pfi_kif */
		if (esize != sizeof (struct pfi_uif)) {
			error = ENODEV;
			break;
		}
		if (p64)
			io64->pfiio_name[sizeof (io64->pfiio_name) - 1] = '\0';
		else
			io32->pfiio_name[sizeof (io32->pfiio_name) - 1] = '\0';
		error = FUNC2(
		    p64 ? io64->pfiio_name : io32->pfiio_name, buf,
		    p64 ? &io64->pfiio_size : &io32->pfiio_size);
		break;
	}

	case DIOCSETIFFLAG: {
		if (p64)
			io64->pfiio_name[sizeof (io64->pfiio_name) - 1] = '\0';
		else
			io32->pfiio_name[sizeof (io32->pfiio_name) - 1] = '\0';

		error = FUNC3(
		    p64 ? io64->pfiio_name : io32->pfiio_name,
		    p64 ? io64->pfiio_flags : io32->pfiio_flags);
		break;
	}

	case DIOCCLRIFFLAG: {
		if (p64)
			io64->pfiio_name[sizeof (io64->pfiio_name) - 1] = '\0';
		else
			io32->pfiio_name[sizeof (io32->pfiio_name) - 1] = '\0';

		error = FUNC1(
		    p64 ? io64->pfiio_name : io32->pfiio_name,
		    p64 ? io64->pfiio_flags : io32->pfiio_flags);
		break;
	}

	default:
		FUNC0(0);
		/* NOTREACHED */
	}

	return (error);
}