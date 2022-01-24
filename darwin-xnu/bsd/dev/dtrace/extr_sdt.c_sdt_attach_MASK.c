#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * sdtp_name; int /*<<< orphan*/  sdtp_id; int /*<<< orphan*/  sdtp_attr; } ;
typedef  TYPE_1__ sdt_provider_t ;
typedef  int /*<<< orphan*/  sdt_probe_t ;
typedef  int /*<<< orphan*/  dev_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_NOTE ; 
 int /*<<< orphan*/  CE_WARN ; 
 scalar_t__ DDI_FAILURE ; 
 int /*<<< orphan*/  DDI_PSEUDO ; 
 int DDI_SUCCESS ; 
 int /*<<< orphan*/  DTRACE_PRIV_KERNEL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int SDT_PROBETAB_SIZE ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdt_invop ; 
 int /*<<< orphan*/  sdt_pops ; 
 int /*<<< orphan*/  sdt_probetab ; 
 int sdt_probetab_mask ; 
 int sdt_probetab_size ; 
 TYPE_1__* sdt_providers ; 

__attribute__((used)) static int
FUNC6(dev_info_t *devi)
{
	sdt_provider_t *prov;

	if (FUNC1(devi, "sdt", S_IFCHR,
	    0, DDI_PSEUDO, 0) == DDI_FAILURE) {
		FUNC0(CE_NOTE, "/dev/sdt couldn't create minor node");
		FUNC2(devi, NULL);
		return (DDI_FAILURE);
	}

	if (sdt_probetab_size == 0)
		sdt_probetab_size = SDT_PROBETAB_SIZE;

	sdt_probetab_mask = sdt_probetab_size - 1;
	sdt_probetab =
	    FUNC5(sdt_probetab_size * sizeof (sdt_probe_t *), KM_SLEEP);
	FUNC3(sdt_invop);

	for (prov = sdt_providers; prov->sdtp_name != NULL; prov++) {
		if (FUNC4(prov->sdtp_name, prov->sdtp_attr,
		    DTRACE_PRIV_KERNEL, NULL,
		    &sdt_pops, prov, &prov->sdtp_id) != 0) {
			FUNC0(CE_WARN, "failed to register sdt provider %s",
			    prov->sdtp_name);
		}
	}

	return (DDI_SUCCESS);
}