#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ tcp_seq ;
struct timeval {int tv_sec; } ;
struct tcpcb {scalar_t__ t_state; TYPE_1__* t_inpcb; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  isn_secret ;
struct TYPE_2__ {int inp_vflag; int /*<<< orphan*/  inp_laddr; int /*<<< orphan*/  inp_faddr; int /*<<< orphan*/  in6p_laddr; int /*<<< orphan*/  in6p_faddr; int /*<<< orphan*/  inp_lport; int /*<<< orphan*/  inp_fport; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int INP_IPV6 ; 
 scalar_t__ ISN_BYTES_PER_SECOND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ TCPS_LISTEN ; 
 scalar_t__ TCPS_TIME_WAIT ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 scalar_t__ hz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ tcp_isn_reseed_interval ; 
 scalar_t__ tcp_strict_rfc1948 ; 

tcp_seq
FUNC8(struct tcpcb *tp)
{
	u_int32_t md5_buffer[4];
	tcp_seq new_isn;
	struct timeval timenow;
	u_char isn_secret[32];
	int isn_last_reseed = 0;
	MD5_CTX isn_ctx;

	/* Use arc4random for SYN-ACKs when not in exact RFC1948 mode. */
	if (((tp->t_state == TCPS_LISTEN) || (tp->t_state == TCPS_TIME_WAIT)) &&
	    tcp_strict_rfc1948 == 0)
#ifdef __APPLE__
		return (RandomULong());
#else
		return (FUNC4());
#endif
	FUNC5(&timenow);

	/* Seed if this is the first use, reseed if requested. */
	if ((isn_last_reseed == 0) ||
	    ((tcp_strict_rfc1948 == 0) && (tcp_isn_reseed_interval > 0) &&
	    (((u_int)isn_last_reseed + (u_int)tcp_isn_reseed_interval*hz)
		< (u_int)timenow.tv_sec))) {
#ifdef __APPLE__
		read_frandom(&isn_secret, sizeof(isn_secret));
#else
		FUNC7(&isn_secret, sizeof(isn_secret));
#endif
		isn_last_reseed = timenow.tv_sec;
	}

	/* Compute the md5 hash and return the ISN. */
	FUNC1(&isn_ctx);
	FUNC2(&isn_ctx, (u_char *) &tp->t_inpcb->inp_fport,
	    sizeof(u_short));
	FUNC2(&isn_ctx, (u_char *) &tp->t_inpcb->inp_lport,
	    sizeof(u_short));
#if INET6
	if ((tp->t_inpcb->inp_vflag & INP_IPV6) != 0) {
		MD5Update(&isn_ctx, (u_char *) &tp->t_inpcb->in6p_faddr,
		    sizeof(struct in6_addr));
		MD5Update(&isn_ctx, (u_char *) &tp->t_inpcb->in6p_laddr,
		    sizeof(struct in6_addr));
	} else
#endif
	{
		FUNC2(&isn_ctx, (u_char *) &tp->t_inpcb->inp_faddr,
		    sizeof(struct in_addr));
		FUNC2(&isn_ctx, (u_char *) &tp->t_inpcb->inp_laddr,
		    sizeof(struct in_addr));
	}
	FUNC2(&isn_ctx, (u_char *) &isn_secret, sizeof(isn_secret));
	FUNC0((u_char *) &md5_buffer, &isn_ctx);
	new_isn = (tcp_seq) md5_buffer[0];
	new_isn += timenow.tv_sec * (ISN_BYTES_PER_SECOND / hz);
	return (new_isn);
}