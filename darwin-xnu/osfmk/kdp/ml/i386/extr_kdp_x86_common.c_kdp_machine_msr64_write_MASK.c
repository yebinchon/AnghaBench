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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  kdp_x86_xcpu_func_t ;
struct TYPE_4__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ kdp_writemsr64_req_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int KDPERR_NO_ERROR ; 
 scalar_t__ KDP_CURRENT_LCPU ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(kdp_writemsr64_req_t *rq, caddr_t data, uint16_t lcpu)
{
	uint64_t *value = (uint64_t *) data;
	uint32_t msr    = rq->address;

	if ((lcpu != KDP_CURRENT_LCPU) && (lcpu != FUNC0())) {
		return (int) FUNC1(lcpu, (kdp_x86_xcpu_func_t)kdp_machine_msr64_write, rq, data);
	}

	FUNC2(msr, *value);
	return KDPERR_NO_ERROR;
}