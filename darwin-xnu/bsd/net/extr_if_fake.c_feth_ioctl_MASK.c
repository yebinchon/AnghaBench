#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
union ifdrvu {TYPE_2__* ifdrvu_64; TYPE_1__* ifdrvu_32; void* ifdrvu_p; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_long ;
struct TYPE_16__ {int /*<<< orphan*/  sa_len; int /*<<< orphan*/  sa_data; } ;
struct ifdevmtu {int /*<<< orphan*/  ifdm_min; int /*<<< orphan*/  ifdm_max; int /*<<< orphan*/  ifdm_current; } ;
struct ifreq {TYPE_3__ ifr_addr; int /*<<< orphan*/  ifr_mtu; struct ifdevmtu ifr_devmtu; } ;
struct ifmediareq64 {int /*<<< orphan*/  ifmu_ulist; } ;
struct ifmediareq32 {int /*<<< orphan*/  ifmu_ulist; } ;
struct ifmediareq {unsigned int ifm_count; int ifm_status; int /*<<< orphan*/  ifm_mask; void* ifm_current; void* ifm_active; } ;
typedef  TYPE_4__* ifnet_t ;
typedef  TYPE_5__* if_fake_ref ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_18__ {unsigned int iff_media_count; int /*<<< orphan*/  iff_media_list; int /*<<< orphan*/ * iff_peer; } ;
struct TYPE_17__ {int if_flags; } ;
struct TYPE_15__ {int /*<<< orphan*/  ifd_data; int /*<<< orphan*/  ifd_len; int /*<<< orphan*/  ifd_cmd; } ;
struct TYPE_14__ {int /*<<< orphan*/  ifd_data; int /*<<< orphan*/  ifd_len; int /*<<< orphan*/  ifd_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FALSE ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 void* IFM_ETHER ; 
 int /*<<< orphan*/  IF_MINMTU ; 
#define  SIOCADDMULTI 140 
#define  SIOCDELMULTI 139 
#define  SIOCGDRVSPEC32 138 
#define  SIOCGDRVSPEC64 137 
#define  SIOCGIFDEVMTU 136 
#define  SIOCGIFMEDIA32 135 
#define  SIOCGIFMEDIA64 134 
#define  SIOCSDRVSPEC32 133 
#define  SIOCSDRVSPEC64 132 
#define  SIOCSIFADDR 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFLLADDR 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*,int,int) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(ifnet_t ifp, u_long cmd, void * data)
{
	unsigned int		count;
	struct ifdevmtu *	devmtu_p;
	union ifdrvu		drv;
	uint32_t		drv_cmd;
	uint32_t		drv_len;
	boolean_t		drv_set_command = FALSE;
	int 			error = 0;
	struct ifmediareq *	ifmr;
	struct ifreq *		ifr;
	if_fake_ref		fakeif;
	int			status;
	user_addr_t		user_addr;

	ifr = (struct ifreq *)data;
	switch (cmd) {
	case SIOCSIFADDR:
		FUNC9(ifp, IFF_UP, IFF_UP);
		break;

	case SIOCGIFMEDIA32:
	case SIOCGIFMEDIA64:
		FUNC4();
		fakeif = (if_fake_ref)FUNC12(ifp);
		if (fakeif == NULL) {
			FUNC7();
			return (EOPNOTSUPP);
		}
		status = (fakeif->iff_peer != NULL)
		    ? (IFM_AVALID | IFM_ACTIVE) : IFM_AVALID;
		ifmr = (struct ifmediareq *)data;
		user_addr = (cmd == SIOCGIFMEDIA64) ?
			((struct ifmediareq64 *)ifmr)->ifmu_ulist :
			FUNC0(((struct ifmediareq32 *)ifmr)->ifmu_ulist);
		count = ifmr->ifm_count;
		ifmr->ifm_active = IFM_ETHER;
		ifmr->ifm_current = IFM_ETHER;
		ifmr->ifm_mask = 0;
		ifmr->ifm_status = status;
		if (user_addr == USER_ADDR_NULL) {
			ifmr->ifm_count = fakeif->iff_media_count;
		}
		else if (count > 0) {
			if (count > fakeif->iff_media_count) {
				count = fakeif->iff_media_count;
			}
			ifmr->ifm_count = count;
			error = FUNC1(&fakeif->iff_media_list, user_addr,
					count * sizeof(int));
		}
		FUNC7();
		break;

	case SIOCGIFDEVMTU:
		devmtu_p = &ifr->ifr_devmtu;
		devmtu_p->ifdm_current = FUNC8(ifp);
		devmtu_p->ifdm_max = FUNC5();
		devmtu_p->ifdm_min = IF_MINMTU;
		break;

	case SIOCSIFMTU:
		if (ifr->ifr_mtu > FUNC5() || ifr->ifr_mtu < IF_MINMTU) {
			error = EINVAL;
		} else {
			error = FUNC11(ifp, ifr->ifr_mtu);
		}
		break;

	case SIOCSDRVSPEC32:
	case SIOCSDRVSPEC64:
		error = FUNC13(FUNC2());
		if (error != 0) {
			break;
		}
		drv_set_command = TRUE;
		/* FALL THROUGH */
	case SIOCGDRVSPEC32:
	case SIOCGDRVSPEC64:
		drv.ifdrvu_p = data;
		if (cmd == SIOCGDRVSPEC32 || cmd == SIOCSDRVSPEC32) {
			drv_cmd = drv.ifdrvu_32->ifd_cmd;
			drv_len = drv.ifdrvu_32->ifd_len;
			user_addr = FUNC0(drv.ifdrvu_32->ifd_data);

		} else {
			drv_cmd = drv.ifdrvu_64->ifd_cmd;
			drv_len = drv.ifdrvu_64->ifd_len;
			user_addr = drv.ifdrvu_64->ifd_data;
		}
		if (drv_set_command) {
			error = FUNC6(ifp, drv_cmd, drv_len,
						 user_addr);
		} else {
			error = FUNC3(ifp, drv_cmd, drv_len,
						 user_addr);
		}
		break;

	case SIOCSIFLLADDR:
		error = FUNC10(ifp, ifr->ifr_addr.sa_data,
		    ifr->ifr_addr.sa_len);
		break;

	case SIOCSIFFLAGS:
		if ((ifp->if_flags & IFF_UP) != 0) {
			/* marked up, set running if not already set */
			if ((ifp->if_flags & IFF_RUNNING) == 0) {
				/* set running */
				error = FUNC9(ifp, IFF_RUNNING,
				    IFF_RUNNING);
			}
		} else if ((ifp->if_flags & IFF_RUNNING) != 0) {
			/* marked down, clear running */
			error = FUNC9(ifp, 0, IFF_RUNNING);
		}
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		error = 0;
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return error;
}