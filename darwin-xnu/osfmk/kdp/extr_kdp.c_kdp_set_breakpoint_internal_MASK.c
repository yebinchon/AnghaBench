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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int /*<<< orphan*/  kdp_error_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  breakinstr ;
struct TYPE_2__ {scalar_t__ address; int bytesused; int /*<<< orphan*/  oldbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  KDPERR_BREAKPOINT_ALREADY_SET ; 
 int /*<<< orphan*/  KDPERR_MAX_BREAKPOINTS ; 
 int /*<<< orphan*/  KDPERR_NO_ERROR ; 
 int MAX_BREAKINSN_BYTES ; 
 int MAX_BREAKPOINTS ; 
 TYPE_1__* breakpoint_list ; 
 scalar_t__ breakpoints_initialized ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

kdp_error_t
FUNC6(
    mach_vm_address_t	address
)
{
	
	uint8_t		breakinstr[MAX_BREAKINSN_BYTES], oldinstr[MAX_BREAKINSN_BYTES];
	uint32_t	breakinstrsize = sizeof(breakinstr);
	mach_vm_size_t	cnt;
	int			i;
	
	FUNC0(breakinstr, &breakinstrsize);
	
	if(breakpoints_initialized == 0)
    {
		for(i=0;(i < MAX_BREAKPOINTS); breakpoint_list[i].address=0, i++);
		breakpoints_initialized++;
    }
	
	cnt = FUNC1(address, (caddr_t)&oldinstr, (mach_vm_size_t)breakinstrsize);
	
	if (0 == FUNC3(oldinstr, breakinstr, breakinstrsize)) {
		FUNC5("A trap was already set at that address, not setting new breakpoint\n");
		
		return KDPERR_BREAKPOINT_ALREADY_SET;
	}
	
	for(i=0;(i < MAX_BREAKPOINTS) && (breakpoint_list[i].address != 0); i++);
	
	if (i == MAX_BREAKPOINTS) {
		return KDPERR_MAX_BREAKPOINTS;
	}
	
	breakpoint_list[i].address =  address;
	FUNC4(breakpoint_list[i].oldbytes, oldinstr, breakinstrsize);
	breakpoint_list[i].bytesused =  breakinstrsize;
	
	cnt = FUNC2((caddr_t)&breakinstr, address, breakinstrsize);
	
	return KDPERR_NO_ERROR;
}