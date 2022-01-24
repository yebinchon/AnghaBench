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
typedef  int /*<<< orphan*/  u32 ;
struct ctrl_req_t {scalar_t__ state; int /*<<< orphan*/  err; TYPE_1__* pcb; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int /*<<< orphan*/  cmdq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STATE_FAILED ; 
 scalar_t__ STATE_SENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline s32 FUNC3(struct ctrl_req_t *req)
{
	s32 err;
	u32 level;

	if(!req || !req->pcb) return ERR_VAL;

	FUNC1(level);
	while(req->state!=STATE_SENT
		&& req->state!=STATE_FAILED)
	{
		FUNC0(req->pcb->cmdq);
	}
	err = req->err;
	FUNC2(level);

	return err;
}