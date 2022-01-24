#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct inquiry_info_ex {int /*<<< orphan*/  co; int /*<<< orphan*/  psm; int /*<<< orphan*/  psrm; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  cod; } ;
typedef  int s32_t ;
typedef  int /*<<< orphan*/  s32 ;
typedef  scalar_t__ err_t ;
struct TYPE_3__ {scalar_t__ num_founddevs; int num_maxdevs; struct inquiry_info_ex* info; scalar_t__ hci_cmddone; } ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bte_inquiry_complete ; 
 TYPE_1__ btstate ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

s32 FUNC6(struct inquiry_info_ex *info,u8 max_cnt,u8 flush)
{
	s32_t i;
	u32 level,fnd;
	err_t last_err;
	struct inquiry_info_ex *pinfo;

	last_err = ERR_OK;

	FUNC0(level);
	if(btstate.num_founddevs==0 || flush==1) {
		btstate.hci_cmddone = 0;
		btstate.num_maxdevs = max_cnt;
		FUNC4(0x009E8B33,0x03,max_cnt,bte_inquiry_complete);
		last_err = FUNC2(&btstate);
	}
	fnd = btstate.num_founddevs;
	pinfo = btstate.info;
	FUNC1(level);

	if(last_err==ERR_OK) {
		for(i=0;i<fnd && i<max_cnt;i++) {
			FUNC5(info[i].cod,pinfo[i].cod,3);
			FUNC3(&(info[i].bdaddr),&(pinfo[i].bdaddr));
			info[i].psrm = pinfo[i].psrm;
			info[i].psm = pinfo[i].psm;
			info[i].co = pinfo[i].co;
		}
	}
	return (s32)((last_err==ERR_OK) ? fnd : last_err);
}