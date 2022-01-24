#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct socket {int so_flags; TYPE_2__* so_cfil; } ;
struct sockaddr {int dummy; } ;
struct mbuf {scalar_t__ m_type; } ;
struct TYPE_4__ {int cfi_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  cfs_data_in_oob; int /*<<< orphan*/  cfs_data_in_control; } ;

/* Variables and functions */
 int CFIF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EPIPE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ MT_OOBDATA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int SOF_CONTENT_FILTER ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int FUNC4 (struct socket*,TYPE_2__*,int /*<<< orphan*/ ,struct sockaddr*,struct mbuf*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ *,struct sockaddr*,struct mbuf*,struct mbuf*,int /*<<< orphan*/ ) ; 
 TYPE_1__ cfil_stats ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 

int
FUNC7(struct socket *so, struct sockaddr *from,
	struct mbuf *data, struct mbuf *control, uint32_t flags)
{
	int error = 0;

	if (FUNC1(so)) {
        return (FUNC5(FALSE, so, NULL, from, data, control, flags));
    }

	if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == NULL)
		return (0);

	FUNC6(so);

	if (so->so_cfil->cfi_flags & CFIF_DROP) {
		FUNC0(LOG_ERR, "so %llx drop set",
			(uint64_t)FUNC3(so));
		return (EPIPE);
	}
	if (control != NULL) {
		FUNC0(LOG_ERR, "so %llx control",
			(uint64_t)FUNC3(so));
		FUNC2(&cfil_stats.cfs_data_in_control);
	}
	if (data->m_type == MT_OOBDATA) {
		FUNC0(LOG_ERR, "so %llx MSG_OOB",
			(uint64_t)FUNC3(so));
		FUNC2(&cfil_stats.cfs_data_in_oob);
	}
	error = FUNC4(so, so->so_cfil, 0, from, data, control, flags);

	return (error);
}