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
typedef  int u32 ;
struct TYPE_3__ {int iram_addr; int iram_len; int init_vec; scalar_t__ iram_maddr; } ;
typedef  TYPE_1__ dsptask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(dsptask_t *task)
{
	u32 mail;
	while(!FUNC0());
	mail = FUNC2();
	FUNC3(0x80F3A001);
	while(FUNC1());
	FUNC3((u32)task->iram_maddr);
	while(FUNC1());
	FUNC3(0x80F3C002);
	while(FUNC1());
	FUNC3((task->iram_addr&0xffff));
	while(FUNC1());
	FUNC3(0x80F3A002);
	while(FUNC1());
	FUNC3(task->iram_len);
	while(FUNC1());
	FUNC3(0x80F3B002);
	while(FUNC1());
	FUNC3(0);
	while(FUNC1());
	FUNC3(0x80F3D001);
	while(FUNC1());
	FUNC3(task->init_vec);
	while(FUNC1());
}