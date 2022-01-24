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
typedef  scalar_t__ u_int32_t ;
typedef  void* u_int16_t ;
typedef  int /*<<< orphan*/  u_int ;
struct sockaddr_in {void* sin_port; } ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int EPROGUNAVAIL ; 
 int /*<<< orphan*/  MBUF_TYPE_DATA ; 
 int /*<<< orphan*/  MBUF_WAITOK ; 
 int /*<<< orphan*/  PMAPPORT ; 
 int /*<<< orphan*/  PMAPPROC_GETPORT ; 
 scalar_t__ PMAPPROG ; 
 int /*<<< orphan*/  PMAPVERS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sockaddr_in*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

int
FUNC9(
	struct sockaddr_in *sin,	/* server address */
	u_int prog, u_int vers, u_int proto,	/* host order */
	u_int16_t *portp)		/* network order */
{
	struct sdata {
		u_int32_t prog;		/* call program */
		u_int32_t vers;		/* call version */
		u_int32_t proto;	/* call protocol */
		u_int32_t port;		/* call port (unused) */
	} *sdata;
	struct rdata {
		u_int16_t pad;
		u_int16_t port;
	} *rdata;
	mbuf_t m;
	int error;

	/* The portmapper port is fixed. */
	if (prog == PMAPPROG) {
		*portp = FUNC1(PMAPPORT);
		return 0;
	}

	error = FUNC5(MBUF_WAITOK, MBUF_TYPE_DATA, &m);
	if (error)
		return error;
	FUNC8(m, sizeof(*sdata));
	FUNC7(m, sizeof(*sdata));
	sdata = FUNC3(m);

	/* Do the RPC to get it. */
	sdata->prog = FUNC0(prog);
	sdata->vers = FUNC0(vers);
	sdata->proto = FUNC0(proto);
	sdata->port = 0;

	sin->sin_port = FUNC1(PMAPPORT);
	error = FUNC2(sin, SOCK_DGRAM, PMAPPROG, PMAPVERS, PMAPPROC_GETPORT, &m, NULL);
	if (error) 
		return error;

	rdata = FUNC3(m);

	if (FUNC6(m) >= sizeof(*rdata)) {
		*portp = rdata->port;
	}

	if (FUNC6(m) < sizeof(*rdata) || !rdata->port)
		error = EPROGUNAVAIL;

	FUNC4(m);
	return (error);
}