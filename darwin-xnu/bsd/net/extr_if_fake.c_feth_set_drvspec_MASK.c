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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct if_fake_request {char* iffr_peer_name; int /*<<< orphan*/  iffr_dequeue_stall; } ;
typedef  int /*<<< orphan*/ * ifnet_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FAKE_ETHER_NAME ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  IFT_ETHER ; 
#define  IF_FAKE_S_CMD_SET_DEQUEUE_STALL 130 
#define  IF_FAKE_S_CMD_SET_MEDIA 129 
#define  IF_FAKE_S_CMD_SET_PEER 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct if_fake_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct if_fake_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(ifnet_t ifp, uint32_t cmd, u_int32_t len,
		 user_addr_t user_addr)
{
	int			error;
	struct if_fake_request	iffr;
	ifnet_t			peer;

	switch (cmd) {
	case IF_FAKE_S_CMD_SET_PEER:
		error = FUNC3(user_addr, &iffr, len);
		if (error != 0) {
			break;
		}
		if (iffr.iffr_peer_name[0] == '\0') {
			error = FUNC0(ifp, NULL);
			break;
		}

		/* ensure nul termination */
		iffr.iffr_peer_name[IFNAMSIZ - 1] = '\0';
		peer = FUNC6(iffr.iffr_peer_name);
		if (peer == NULL) {
			error = ENXIO;
			break;
		}
		if (FUNC5(peer) != IFT_ETHER) {
			error = EINVAL;
			break;
		}
		if (FUNC7(FUNC4(peer), FAKE_ETHER_NAME) != 0) {
			error = EINVAL;
			break;
		}
		error = FUNC0(ifp, peer);
		break;
	case IF_FAKE_S_CMD_SET_MEDIA:
		error = FUNC3(user_addr, &iffr, len);
		if (error != 0) {
			break;
		}
		error = FUNC2(ifp, &iffr);
		break;
	case IF_FAKE_S_CMD_SET_DEQUEUE_STALL:
		error = FUNC3(user_addr, &iffr, len);
		if (error != 0) {
			break;
		}
		error = FUNC1(ifp,
		    iffr.iffr_dequeue_stall);
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}