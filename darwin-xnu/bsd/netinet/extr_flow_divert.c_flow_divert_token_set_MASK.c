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
typedef  scalar_t__ uint32_t ;
struct tcpcb {scalar_t__ t_state; } ;
struct sockopt {int dummy; } ;
struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int log_level; int /*<<< orphan*/  flags; int /*<<< orphan*/ * connect_token; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int /*<<< orphan*/  log_level ;
typedef  int /*<<< orphan*/  key_unit ;
typedef  int /*<<< orphan*/  flow_id ;
typedef  int errno_t ;
typedef  int /*<<< orphan*/  ctl_unit ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FLOW_DIVERT_HAS_HMAC ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_CTL_UNIT ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_FLOW_ID ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_KEY_UNIT ; 
 int /*<<< orphan*/  FLOW_DIVERT_TLV_LOG_LEVEL ; 
 scalar_t__ GROUP_COUNT_MAX ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LOG_NOTICE ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int SOF_FLOW_DIVERT ; 
 scalar_t__ TCPS_CLOSED ; 
 int FUNC4 (struct socket*,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (struct socket*,scalar_t__) ; 
 int g_init_result ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nil_pcb ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sockopt*,int /*<<< orphan*/ **) ; 
 int FUNC13 (struct sockopt*,int /*<<< orphan*/ *) ; 
 struct tcpcb* FUNC14 (struct socket*) ; 

errno_t
FUNC15(struct socket *so, struct sockopt *sopt)
{
	uint32_t					ctl_unit		= 0;
	uint32_t					key_unit		= 0;
	uint32_t					flow_id			= 0;
	int							error			= 0;
	int							hmac_error		= 0;
	mbuf_t						token			= NULL;

	if (so->so_flags & SOF_FLOW_DIVERT) {
		error = EALREADY;
		goto done;
	}

	if (g_init_result) {
		FUNC0(LOG_ERR, &nil_pcb, "flow_divert_init failed (%d), cannot use flow divert", g_init_result);
		error = ENOPROTOOPT;
		goto done;
	}

	if ((FUNC3(so) != SOCK_STREAM && FUNC3(so) != SOCK_DGRAM) ||
	    (FUNC2(so) != IPPROTO_TCP && FUNC2(so) != IPPROTO_UDP) ||
	    (FUNC1(so) != PF_INET
#if INET6
	     && SOCK_DOM(so) != PF_INET6
#endif
		))
	{
		error = EINVAL;
		goto done;
	} else {
		if (FUNC3(so) == SOCK_STREAM && FUNC2(so) == IPPROTO_TCP) {
			struct tcpcb *tp = FUNC14(so);
			if (tp == NULL || tp->t_state != TCPS_CLOSED) {
				error = EINVAL;
				goto done;
			}
		}
	}

	error = FUNC12(sopt, &token);
	if (error) {
		token = NULL;
		goto done;
	}

	error = FUNC13(sopt, token);
	if (error) {
		token = NULL;
		goto done;
	}

	error = FUNC5(token, 0, FLOW_DIVERT_TLV_KEY_UNIT, sizeof(key_unit), (void *)&key_unit, NULL);
	if (!error) {
		key_unit = FUNC9(key_unit);
		if (key_unit >= GROUP_COUNT_MAX) {
			key_unit = 0;
		}
	} else if (error != ENOENT) {
		FUNC0(LOG_ERR, &nil_pcb, "Failed to get the key unit from the token: %d", error);
		goto done;
	} else {
		key_unit = 0;
	}

	error = FUNC5(token, 0, FLOW_DIVERT_TLV_CTL_UNIT, sizeof(ctl_unit), (void *)&ctl_unit, NULL);
	if (error) {
		FUNC0(LOG_ERR, &nil_pcb, "Failed to get the control socket unit from the token: %d", error);
		goto done;
	}

	/* A valid kernel control unit is required */
	ctl_unit = FUNC9(ctl_unit);
	if (ctl_unit == 0 || ctl_unit >= GROUP_COUNT_MAX) {
		FUNC0(LOG_ERR, &nil_pcb, "Got an invalid control socket unit: %u", ctl_unit);
		error = EINVAL;
		goto done;
	}

	FUNC11(so, 0);
	hmac_error = FUNC6(token, (key_unit != 0 ? key_unit : ctl_unit));
	FUNC10(so, 0);

	if (hmac_error && hmac_error != ENOENT) {
		FUNC0(LOG_ERR, &nil_pcb, "HMAC verfication failed: %d", hmac_error);
		error = hmac_error;
		goto done;
	}

	error = FUNC5(token, 0, FLOW_DIVERT_TLV_FLOW_ID, sizeof(flow_id), (void *)&flow_id, NULL);
	if (error && error != ENOENT) {
		FUNC0(LOG_ERR, &nil_pcb, "Failed to get the flow ID from the token: %d", error);
		goto done;
	}

	if (flow_id == 0) {
		error = FUNC7(so, ctl_unit);
		if (error == 0) {
			struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
			int log_level = LOG_NOTICE;

			error = FUNC5(token, 0, FLOW_DIVERT_TLV_LOG_LEVEL,
				                               sizeof(log_level), &log_level, NULL);
			if (error == 0) {
				fd_cb->log_level = log_level;
			}
			error = 0;

			fd_cb->connect_token = token;
			token = NULL;
		}
	} else {
		error = FUNC4(so, flow_id, ctl_unit);
	}

	if (hmac_error == 0) {
		struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
		if (fd_cb != NULL) {
			fd_cb->flags |= FLOW_DIVERT_HAS_HMAC;
		}
	}

done:
	if (token != NULL) {
		FUNC8(token);
	}

	return error;
}