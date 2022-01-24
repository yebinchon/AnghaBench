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
struct sockopt {int sopt_level; int sopt_dir; int sopt_name; int sopt_valsize; } ;
struct socket {int dummy; } ;
struct inpcb {int /*<<< orphan*/ * in6p_icmp6filt; } ;
struct icmp6_filter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOPROTOOPT ; 
#define  ICMP6_FILTER 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IPPROTO_ICMPV6 ; 
#define  PRCO_GETOPT 129 
#define  PRCO_SETOPT 128 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct sockopt*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (struct sockopt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC4 (struct socket*) ; 

int
FUNC5(struct socket *so, struct sockopt *sopt)
{
	int error = 0;
	int optlen;
	struct inpcb *inp = FUNC4(so);
	int level, op, optname;

	if (sopt) {
		level = sopt->sopt_level;
		op = sopt->sopt_dir;
		optname = sopt->sopt_name;
		optlen = sopt->sopt_valsize;
	} else
		level = op = optname = optlen = 0;

	if (level != IPPROTO_ICMPV6) {
		return EINVAL;
	}

	switch (op) {
	case PRCO_SETOPT:
		switch (optname) {
		case ICMP6_FILTER:
		    {
			struct icmp6_filter *p;

			if (optlen != 0 && optlen != sizeof(*p)) {
				error = EMSGSIZE;
				break;
			}
			if (inp->in6p_icmp6filt == NULL) {
				error = EINVAL;
				break;
			}

			if (optlen == 0) {
				/* According to RFC 3542, an installed filter can be
				 * cleared by issuing a setsockopt for ICMP6_FILTER
				 * with a zero length.
				 */
				FUNC0(inp->in6p_icmp6filt);
			} else {
				error = FUNC2(sopt, inp->in6p_icmp6filt, optlen,
					optlen);
			}
			break;
		    }

		default:
			error = ENOPROTOOPT;
			break;
		}
		break;

	case PRCO_GETOPT:
		switch (optname) {
		case ICMP6_FILTER:
		    {
			if (inp->in6p_icmp6filt == NULL) {
				error = EINVAL;
				break;
			}
			error = FUNC3(sopt, inp->in6p_icmp6filt,
					FUNC1(sizeof(struct icmp6_filter), optlen));
			break;
		    }

		default:
			error = ENOPROTOOPT;
			break;
		}
		break;
	}

	return(error);
}