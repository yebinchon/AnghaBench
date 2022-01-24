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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  dram_addr; int /*<<< orphan*/  dram_len; scalar_t__ dram_maddr; int /*<<< orphan*/  resume_vec; int /*<<< orphan*/  init_vec; int /*<<< orphan*/  iram_addr; int /*<<< orphan*/  iram_len; scalar_t__ iram_maddr; } ;
typedef  TYPE_1__ dsptask_t ;

/* Variables and functions */
 scalar_t__ DSPTASK_INIT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(dsptask_t *exec,dsptask_t *hire)
{
	if(!exec) {
		FUNC1(0);
		while(FUNC0());
		FUNC1(0);
		while(FUNC0());
		FUNC1(0);
		while(FUNC0());
	} else {
		FUNC1((u32)exec->dram_maddr);
		while(FUNC0());
		FUNC1(exec->dram_len);
		while(FUNC0());
		FUNC1(exec->dram_addr);
		while(FUNC0());
	}

	FUNC1((u32)hire->iram_maddr);
	while(FUNC0());
	FUNC1(hire->iram_len);
	while(FUNC0());
	FUNC1(hire->iram_addr);
	while(FUNC0());
	if(hire->state==DSPTASK_INIT) {
		FUNC1(hire->init_vec);
		while(FUNC0());
		FUNC1(0);
		while(FUNC0());
		FUNC1(0);
		while(FUNC0());
		FUNC1(0);
		while(FUNC0());
		return;
	}

	FUNC1(hire->resume_vec);
	while(FUNC0());

	FUNC1((u32)hire->dram_maddr);
	while(FUNC0());
	FUNC1(hire->dram_len);
	while(FUNC0());
	FUNC1(hire->dram_addr);
	while(FUNC0());
}