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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int u_int32_t ;
struct if_fake_request {int /*<<< orphan*/  iffr_peer_name; } ;
typedef  int /*<<< orphan*/ * ifnet_t ;
typedef  int /*<<< orphan*/  iffr ;
typedef  TYPE_1__* if_fake_ref ;
struct TYPE_2__ {int /*<<< orphan*/ * iff_peer; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  IF_FAKE_G_CMD_GET_PEER 128 
 int /*<<< orphan*/  FUNC0 (struct if_fake_request*,int) ; 
 int FUNC1 (struct if_fake_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(ifnet_t ifp, u_int32_t cmd, u_int32_t len,
		 user_addr_t user_addr)
{
	int			error = EOPNOTSUPP;
	if_fake_ref		fakeif;
	struct if_fake_request	iffr;
	ifnet_t			peer;

	switch (cmd) {
	case IF_FAKE_G_CMD_GET_PEER:
		if (len < sizeof(iffr)) {
			error = EINVAL;
			break;
		}
		FUNC2();
		fakeif = (if_fake_ref)FUNC5(ifp);
		if (fakeif == NULL) {
			FUNC3();
			error = EOPNOTSUPP;
			break;
		}
		peer = fakeif->iff_peer;
		FUNC3();
		FUNC0(&iffr, sizeof(iffr));
		if (peer != NULL) {
			FUNC6(iffr.iffr_peer_name,
				FUNC4(peer),
				sizeof(iffr.iffr_peer_name));
		}
		error = FUNC1(&iffr, user_addr, sizeof(iffr));
		break;
	default:
		break;
	}
	return (error);
}