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
struct socket {scalar_t__ so_cfil_db; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
struct proc {int dummy; } ;
struct pr_usrreqs {int (* pru_send ) (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;} ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct inpcb {int inp_flags; int inp_vflag; int /*<<< orphan*/  in6p_faddr; } ;
struct TYPE_2__ {struct pr_usrreqs* pr_usrreqs; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int IN6P_IPV6_V6ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int INP_IPV4 ; 
 size_t IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct m_tag* FUNC3 (struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr**) ; 
 int FUNC4 (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*) ; 
 scalar_t__ ip6_mapped_addr_on ; 
 TYPE_1__** ip_protox ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct m_tag*) ; 
 int FUNC8 (struct inpcb*) ; 
 struct inpcb* FUNC9 (struct socket*) ; 
 int FUNC10 (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ; 
 int FUNC11 (struct inpcb*,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ; 

__attribute__((used)) static int
FUNC12(struct socket *so, int flags, struct mbuf *m, struct sockaddr *addr,
    struct mbuf *control, struct proc *p)
{
	struct inpcb *inp;
	int error = 0;
#if defined(NECP) && defined(FLOW_DIVERT)
	int should_use_flow_divert = 0;
#endif /* defined(NECP) && defined(FLOW_DIVERT) */
#if CONTENT_FILTER
	struct m_tag *cfil_tag = NULL;
	struct sockaddr *cfil_faddr = NULL;
#endif

	inp = FUNC9(so);
	if (inp == NULL) {
		error = EINVAL;
		goto bad;
	}

#if CONTENT_FILTER
	//If socket is subject to UDP Content Filter and unconnected, get addr from tag.
	if (so->so_cfil_db && !addr && IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_faddr)) {
		cfil_tag = cfil_udp_get_socket_state(m, NULL, NULL, &cfil_faddr);
		if (cfil_tag) {
			addr = (struct sockaddr *)cfil_faddr;
		}
	}
#endif

#if defined(NECP) && defined(FLOW_DIVERT)
	should_use_flow_divert = necp_socket_should_use_flow_divert(inp);
#endif /* defined(NECP) && defined(FLOW_DIVERT) */

	if (addr != NULL) {
		if (addr->sa_len != sizeof (struct sockaddr_in6)) {
			error = EINVAL;
			goto bad;
		}
		if (addr->sa_family != AF_INET6) {
			error = EAFNOSUPPORT;
			goto bad;
		}
	}

	if (ip6_mapped_addr_on || (inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
		int hasv4addr;
		struct sockaddr_in6 *sin6 = NULL;

		if (addr == NULL) {
			hasv4addr = (inp->inp_vflag & INP_IPV4);
		} else {
			sin6 = (struct sockaddr_in6 *)(void *)addr;
			hasv4addr =
			    FUNC1(&sin6->sin6_addr) ? 1 : 0;
		}
		if (hasv4addr) {
			struct pr_usrreqs *pru;

			if (sin6 != NULL)
				FUNC5(addr);
#if defined(NECP) && defined(FLOW_DIVERT)
			if (should_use_flow_divert) {
				goto do_flow_divert;
			}
#endif /* defined(NECP) && defined(FLOW_DIVERT) */
			pru = ip_protox[IPPROTO_UDP]->pr_usrreqs;
			error = ((*pru->pru_send)(so, flags, m, addr,
			    control, p));
#if CONTENT_FILTER
			if (cfil_tag)
				m_tag_free(cfil_tag);
#endif
			/* addr will just be freed in sendit(). */
			return (error);
		}
	}

#if defined(NECP) && defined(FLOW_DIVERT)
do_flow_divert:
	if (should_use_flow_divert) {
		/* Implicit connect */
		error = flow_divert_implicit_data_out(so, flags, m, addr, control, p);
#if CONTENT_FILTER
		if (cfil_tag)
			m_tag_free(cfil_tag);
#endif
		return error;
	}
#endif /* defined(NECP) && defined(FLOW_DIVERT) */

	error = FUNC11(inp, m, addr, control, p);
#if CONTENT_FILTER
	if (cfil_tag)
		m_tag_free(cfil_tag);
#endif
	return error;

bad:
	FUNC2(error != 0);

	if (m != NULL)
		FUNC6(m);
	if (control != NULL)
		FUNC6(control);
#if CONTENT_FILTER
	if (cfil_tag)
		m_tag_free(cfil_tag);
#endif
	return (error);
}