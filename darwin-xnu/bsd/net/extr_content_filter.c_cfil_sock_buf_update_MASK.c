#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct socket {int so_flags; TYPE_2__* so_cfil; } ;
struct sockbuf {int sb_flags; struct socket* sb_so; } ;
struct TYPE_5__ {int cfi_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  cfs_inject_q_in_retry; int /*<<< orphan*/  cfs_inject_q_out_retry; } ;

/* Variables and functions */
 int CFIF_RETRY_INJECT_IN ; 
 int CFIF_RETRY_INJECT_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int SB_RECV ; 
 int SOF_CONTENT_FILTER ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int FUNC4 (struct socket*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int) ; 
 int /*<<< orphan*/  cfil_sbtrim ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockbuf*) ; 
 TYPE_1__ cfil_stats ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 

void
FUNC9(struct sockbuf *sb)
{
	int outgoing;
	int error;
	struct socket *so = sb->sb_so;

    if (FUNC1(so)) {
		FUNC7(sb);
		return;
    }

	if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == NULL)
		return;

	if (!cfil_sbtrim)
		return;

	FUNC8(so);

	if ((sb->sb_flags & SB_RECV) == 0) {
		if ((so->so_cfil->cfi_flags & CFIF_RETRY_INJECT_OUT) == 0)
			return;
		outgoing = 1;
		FUNC2(&cfil_stats.cfs_inject_q_out_retry);
	} else {
		if ((so->so_cfil->cfi_flags & CFIF_RETRY_INJECT_IN) == 0)
			return;
		outgoing = 0;
		FUNC2(&cfil_stats.cfs_inject_q_in_retry);
	}

	FUNC0(LOG_NOTICE, "so %llx outgoing %d",
		(uint64_t)FUNC3(so), outgoing);

	error = FUNC4(so, so->so_cfil, outgoing);
	if (error == 0)
		FUNC6(so, so->so_cfil, outgoing);
	FUNC5(so, outgoing);
}