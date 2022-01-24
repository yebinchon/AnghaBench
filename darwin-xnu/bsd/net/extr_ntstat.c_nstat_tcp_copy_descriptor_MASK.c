#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct tcpcb {int /*<<< orphan*/  snd_cwnd; int /*<<< orphan*/  snd_wnd; scalar_t__ snd_una; scalar_t__ snd_max; int /*<<< orphan*/  t_state; } ;
struct TYPE_13__ {int /*<<< orphan*/  sb_cc; int /*<<< orphan*/  sb_hiwat; } ;
struct TYPE_12__ {int /*<<< orphan*/  sb_cc; int /*<<< orphan*/  sb_hiwat; } ;
struct socket {int so_flags1; int so_flags; TYPE_5__ so_rcv; TYPE_4__ so_snd; int /*<<< orphan*/  e_uuid; int /*<<< orphan*/  e_pid; int /*<<< orphan*/  e_upid; int /*<<< orphan*/  so_vuuid; int /*<<< orphan*/  last_uuid; int /*<<< orphan*/  so_traffic_class; int /*<<< orphan*/  last_pid; int /*<<< orphan*/  last_upid; } ;
struct nstat_tucookie {scalar_t__* pname; struct inpcb* inp; } ;
struct inpcb {int inp_vflag; int /*<<< orphan*/  inp_start_timestamp; struct socket* inp_socket; TYPE_3__* inp_last_outifp; int /*<<< orphan*/  inp_fport; int /*<<< orphan*/  inp_faddr; int /*<<< orphan*/  inp_lport; int /*<<< orphan*/  inp_laddr; int /*<<< orphan*/  in6p_faddr; int /*<<< orphan*/  in6p_laddr; } ;
struct TYPE_10__ {int /*<<< orphan*/  v4; int /*<<< orphan*/  v6; } ;
struct TYPE_9__ {int /*<<< orphan*/  v4; int /*<<< orphan*/  v6; } ;
struct TYPE_14__ {scalar_t__* cc_algo; scalar_t__* pname; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  start_timestamp; int /*<<< orphan*/  activity_bitmap; int /*<<< orphan*/  ifnet_properties; int /*<<< orphan*/  connstatus; int /*<<< orphan*/  rcvbufused; int /*<<< orphan*/  rcvbufsize; int /*<<< orphan*/  sndbufused; int /*<<< orphan*/  sndbufsize; int /*<<< orphan*/  uuid; int /*<<< orphan*/  euuid; int /*<<< orphan*/  pid; int /*<<< orphan*/  epid; int /*<<< orphan*/  upid; int /*<<< orphan*/  eupid; int /*<<< orphan*/  vuuid; int /*<<< orphan*/  traffic_mgt_flags; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  txcwindow; int /*<<< orphan*/  txwindow; scalar_t__ txunacked; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  state; TYPE_2__ remote; TYPE_1__ local; } ;
typedef  TYPE_6__ nstat_tcp_descriptor ;
typedef  scalar_t__ nstat_provider_cookie_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_15__ {scalar_t__* name; } ;
struct TYPE_11__ {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int INP_IPV4 ; 
 int INP_IPV6 ; 
 int SOF1_TRAFFIC_MGT_SO_BACKGROUND ; 
 int SOF1_TRAFFIC_MGT_TCP_RECVBG ; 
 int SOF_DELEGATED ; 
 int /*<<< orphan*/  TRAFFIC_MGT_SO_BACKGROUND ; 
 int /*<<< orphan*/  TRAFFIC_MGT_TCP_RECVBG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*,int /*<<< orphan*/ *) ; 
 struct tcpcb* FUNC4 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct tcpcb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static errno_t
FUNC13(
	nstat_provider_cookie_t	cookie,
	void			*data,
	u_int32_t		len)
{
	if (len < sizeof(nstat_tcp_descriptor))
	{
		return EINVAL;
	}

	if (FUNC9(cookie))
		return EINVAL;

	nstat_tcp_descriptor	*desc = (nstat_tcp_descriptor*)data;
	struct nstat_tucookie *tucookie =
	    (struct nstat_tucookie *)cookie;
	struct inpcb		*inp = tucookie->inp;
	struct tcpcb		*tp = FUNC4(inp);
	FUNC1(desc, sizeof(*desc));

	if (inp->inp_vflag & INP_IPV6)
	{
		FUNC2(&inp->in6p_laddr, inp->inp_lport,
			&desc->local.v6, sizeof(desc->local));
		FUNC2(&inp->in6p_faddr, inp->inp_fport,
			&desc->remote.v6, sizeof(desc->remote));
	}
	else if (inp->inp_vflag & INP_IPV4)
	{
		FUNC8(&inp->inp_laddr, inp->inp_lport,
			&desc->local.v4, sizeof(desc->local));
		FUNC8(&inp->inp_faddr, inp->inp_fport,
			&desc->remote.v4, sizeof(desc->remote));
	}

	desc->state = FUNC4(inp)->t_state;
	desc->ifindex = (inp->inp_last_outifp == NULL) ? 0 :
	    inp->inp_last_outifp->if_index;

	// danger - not locked, values could be bogus
	desc->txunacked = tp->snd_max - tp->snd_una;
	desc->txwindow = tp->snd_wnd;
	desc->txcwindow = tp->snd_cwnd;

	if (FUNC0(tp)->name != NULL) {
		FUNC11(desc->cc_algo, FUNC0(tp)->name,
		    sizeof(desc->cc_algo));
	}

	struct socket *so = inp->inp_socket;
	if (so)
	{
		// TBD - take the socket lock around these to make sure
		// they're in sync?
		desc->upid = so->last_upid;
		desc->pid = so->last_pid;
		desc->traffic_class = so->so_traffic_class;
		if ((so->so_flags1 & SOF1_TRAFFIC_MGT_SO_BACKGROUND))
			desc->traffic_mgt_flags |= TRAFFIC_MGT_SO_BACKGROUND;
		if ((so->so_flags1 & SOF1_TRAFFIC_MGT_TCP_RECVBG))
			desc->traffic_mgt_flags |= TRAFFIC_MGT_TCP_RECVBG;
		FUNC10(desc->pid, desc->pname, sizeof(desc->pname));
		if (desc->pname[0] == 0)
		{
			FUNC11(desc->pname, tucookie->pname,
			    sizeof(desc->pname));
		}
		else
		{
			desc->pname[sizeof(desc->pname) - 1] = 0;
			FUNC11(tucookie->pname, desc->pname,
			    sizeof(tucookie->pname));
		}
		FUNC6(desc->uuid, so->last_uuid, sizeof(so->last_uuid));
		FUNC6(desc->vuuid, so->so_vuuid, sizeof(so->so_vuuid));
		if (so->so_flags & SOF_DELEGATED) {
			desc->eupid = so->e_upid;
			desc->epid = so->e_pid;
			FUNC6(desc->euuid, so->e_uuid, sizeof(so->e_uuid));
		} else {
			desc->eupid = desc->upid;
			desc->epid = desc->pid;
			FUNC6(desc->euuid, desc->uuid, sizeof(desc->uuid));
		}
		desc->sndbufsize = so->so_snd.sb_hiwat;
		desc->sndbufused = so->so_snd.sb_cc;
		desc->rcvbufsize = so->so_rcv.sb_hiwat;
		desc->rcvbufused = so->so_rcv.sb_cc;
	}

	FUNC12(tp, &desc->connstatus);
	desc->ifnet_properties = FUNC7(inp);
	FUNC3(inp, &desc->activity_bitmap);
	desc->start_timestamp = inp->inp_start_timestamp;
	desc->timestamp = FUNC5();
	return 0;
}