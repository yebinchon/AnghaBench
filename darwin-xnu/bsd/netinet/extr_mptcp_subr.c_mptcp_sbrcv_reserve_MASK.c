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
typedef  int uint8_t ;
typedef  scalar_t__ u_int32_t ;
struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_idealsize; } ;
struct mptcb {int /*<<< orphan*/  mpt_mpte; } ;

/* Variables and functions */
 int TCP_MAXWIN ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 void* FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sockbuf*,scalar_t__) ; 
 int tcp_autorcvbuf_max ; 

__attribute__((used)) static void
FUNC4(struct mptcb *mp_tp, struct sockbuf *sbrcv,
	u_int32_t newsize, u_int32_t idealsize)
{
	uint8_t rcvscale = FUNC2(mp_tp->mpt_mpte);

	/* newsize should not exceed max */
	newsize = FUNC1(newsize, tcp_autorcvbuf_max);

	/* The receive window scale negotiated at the
	 * beginning of the connection will also set a
	 * limit on the socket buffer size
	 */
	newsize = FUNC1(newsize, TCP_MAXWIN << rcvscale);

	/* Set new socket buffer size */
	if (newsize > sbrcv->sb_hiwat &&
		(FUNC3(sbrcv, newsize) == 1)) {
		sbrcv->sb_idealsize = FUNC1(FUNC0(sbrcv->sb_idealsize,
		    (idealsize != 0) ? idealsize : newsize), tcp_autorcvbuf_max);

		/* Again check the limit set by the advertised
		 * window scale
		 */
		sbrcv->sb_idealsize = FUNC1(sbrcv->sb_idealsize,
			TCP_MAXWIN << rcvscale);
	}
}