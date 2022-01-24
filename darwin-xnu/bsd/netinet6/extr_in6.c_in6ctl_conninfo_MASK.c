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
struct so_cinforeq64 {int /*<<< orphan*/  scir_aux_len; int /*<<< orphan*/  scir_aux_data; int /*<<< orphan*/  scir_aux_type; int /*<<< orphan*/  scir_dst_len; int /*<<< orphan*/  scir_dst; int /*<<< orphan*/  scir_src_len; int /*<<< orphan*/  scir_src; int /*<<< orphan*/  scir_error; int /*<<< orphan*/  scir_ifindex; int /*<<< orphan*/  scir_flags; int /*<<< orphan*/  scir_cid; } ;
struct so_cinforeq32 {int /*<<< orphan*/  scir_aux_len; int /*<<< orphan*/  scir_aux_data; int /*<<< orphan*/  scir_aux_type; int /*<<< orphan*/  scir_dst_len; int /*<<< orphan*/  scir_dst; int /*<<< orphan*/  scir_src_len; int /*<<< orphan*/  scir_src; int /*<<< orphan*/  scir_error; int /*<<< orphan*/  scir_ifindex; int /*<<< orphan*/  scir_flags; int /*<<< orphan*/  scir_cid; } ;
typedef  struct so_cinforeq64* caddr_t ;

/* Variables and functions */
#define  SIOCGCONNINFO32 129 
#define  SIOCGCONNINFO64 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct so_cinforeq64*,struct so_cinforeq64*,int) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC3(struct socket *so, u_long cmd, caddr_t data)
{
	int error = 0;
	union {
		struct so_cinforeq32 ci32;
		struct so_cinforeq64 ci64;
	} u;

	FUNC0(so != NULL);

	switch (cmd) {
	case SIOCGCONNINFO32: {		/* struct so_cinforeq32 */
		FUNC1(data, &u.ci32, sizeof (u.ci32));
		error = FUNC2(so, u.ci32.scir_cid, &u.ci32.scir_flags,
		    &u.ci32.scir_ifindex, &u.ci32.scir_error, u.ci32.scir_src,
		    &u.ci32.scir_src_len, u.ci32.scir_dst, &u.ci32.scir_dst_len,
		    &u.ci32.scir_aux_type, u.ci32.scir_aux_data,
		    &u.ci32.scir_aux_len);
		if (error == 0)
			FUNC1(&u.ci32, data, sizeof (u.ci32));
		break;
	}

	case SIOCGCONNINFO64: {		/* struct so_cinforeq64 */
		FUNC1(data, &u.ci64, sizeof (u.ci64));
		error = FUNC2(so, u.ci64.scir_cid, &u.ci64.scir_flags,
		    &u.ci64.scir_ifindex, &u.ci64.scir_error, u.ci64.scir_src,
		    &u.ci64.scir_src_len, u.ci64.scir_dst, &u.ci64.scir_dst_len,
		    &u.ci64.scir_aux_type, u.ci64.scir_aux_data,
		    &u.ci64.scir_aux_len);
		if (error == 0)
			FUNC1(&u.ci64, data, sizeof (u.ci64));
		break;
	}

	default:
		FUNC0(0);
		/* NOTREACHED */
	}

	return (error);
}