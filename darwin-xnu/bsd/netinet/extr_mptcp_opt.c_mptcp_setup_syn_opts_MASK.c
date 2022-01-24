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
typedef  int /*<<< orphan*/  u_char ;
struct socket {int so_flags; } ;

/* Variables and functions */
 int SOF_MP_SEC_SUBFLOW ; 
 unsigned int FUNC0 (struct socket*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (struct socket*,int /*<<< orphan*/ *,unsigned int) ; 

unsigned
FUNC2(struct socket *so, u_char *opt, unsigned optlen)
{
	unsigned new_optlen;

	if (!(so->so_flags & SOF_MP_SEC_SUBFLOW))
		new_optlen = FUNC0(so, opt, optlen);
	else
		new_optlen = FUNC1(so, opt, optlen);

	return (new_optlen);
}