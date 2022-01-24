#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int dummy; } ;
typedef  TYPE_1__* ifbond_ref ;
struct TYPE_9__ {int ifb_altmtu; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int) ; 
 int /*<<< orphan*/ * FUNC11 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC12(struct ifnet * ifp, int mtu, int isdevmtu)
{
    int			error = 0;
    ifbond_ref		ifb;
    int			mtu_min;
    int			mtu_max;
    int			new_max;
    int			old_max;

    FUNC1();
    ifb = (ifbond_ref)FUNC11(ifp);
    if (ifb == NULL || FUNC4(ifb)) {
	error = (ifb == NULL) ? EOPNOTSUPP : EBUSY;
	goto done;
    }
    FUNC6(ifb);
    FUNC8(ifb, "bond_set_mtu");

    /* check again */
    if (FUNC11(ifp) == NULL || FUNC4(ifb)) {
	error = EBUSY;
	goto signal_done;
    }
    FUNC0(ifb, &mtu_min, &mtu_max);
    if (mtu > mtu_max) {
	error = EINVAL;
	goto signal_done;
    }
    if (mtu < mtu_min && (isdevmtu == 0 || mtu != 0)) {
	/* allow SIOCSIFALTMTU to set the mtu to 0 */
	error = EINVAL;
	goto signal_done;
    }
    if (isdevmtu) {
	new_max = (mtu > (int)FUNC9(ifp)) ? mtu : (int)FUNC9(ifp);
    }
    else {
	new_max = (mtu > ifb->ifb_altmtu) ? mtu : ifb->ifb_altmtu;
    }
    old_max = ((int)FUNC9(ifp) > ifb->ifb_altmtu) 
	? (int)FUNC9(ifp) : ifb->ifb_altmtu;
    if (new_max != old_max) {
	/* we can safely walk the list of port without the lock held */
	FUNC3();
	error = FUNC2(ifb, new_max);
	if (error != 0) {
	    /* try our best to back out of it */
	    (void)FUNC2(ifb, old_max);
	}
	FUNC1();
    }
    if (error == 0) {
	if (isdevmtu) {
	    ifb->ifb_altmtu = mtu;
	}
	else {
		FUNC10(ifp, mtu);
	}
    }

 signal_done:
    FUNC7(ifb, "bond_set_mtu");
    FUNC5(ifb);
    
 done:
    FUNC3();
    return (error);
}