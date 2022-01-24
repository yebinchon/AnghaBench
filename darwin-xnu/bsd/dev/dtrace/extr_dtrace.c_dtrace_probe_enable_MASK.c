#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zoneid_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  dtrace_probekey_t ;
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
struct TYPE_12__ {TYPE_3__* dten_vstate; } ;
typedef  TYPE_4__ dtrace_enabling_t ;
typedef  int /*<<< orphan*/  dtrace_ecbdesc_t ;
struct TYPE_11__ {TYPE_2__* dtvs_state; } ;
struct TYPE_9__ {int /*<<< orphan*/  dcr_cred; } ;
struct TYPE_10__ {TYPE_1__ dts_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dtrace_ecb_create_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *),TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(const dtrace_probedesc_t *desc, dtrace_enabling_t *enab, dtrace_ecbdesc_t *ep)
{
	dtrace_probekey_t pkey;
	uint32_t priv;
	uid_t uid;
	zoneid_t zoneid;
	int err;

	FUNC0(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

	dtrace_ecb_create_cache = NULL;

	if (desc == NULL) {
		/*
		 * If we're passed a NULL description, we're being asked to
		 * create an ECB with a NULL probe.
		 */
		(void) FUNC2(NULL, enab, ep);
		return (0);
	}

	FUNC4(desc, &pkey);
	FUNC1(enab->dten_vstate->dtvs_state->dts_cred.dcr_cred,
	    &priv, &uid, &zoneid);

	err = FUNC3(&pkey, priv, uid, zoneid, dtrace_ecb_create_enable, enab, ep);

	FUNC5(&pkey);

	return err;
}