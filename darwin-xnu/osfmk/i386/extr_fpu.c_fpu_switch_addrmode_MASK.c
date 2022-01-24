#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
struct x86_fx_thread_state {int /*<<< orphan*/  fp_save_layout; scalar_t__ fp_valid; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {struct x86_fx_thread_state* ifps; } ;
struct TYPE_6__ {TYPE_1__ machine; } ;

/* Variables and functions */
 scalar_t__ FP ; 
 int /*<<< orphan*/  FXSAVE32 ; 
 int /*<<< orphan*/  FXSAVE64 ; 
 int /*<<< orphan*/  XSAVE32 ; 
 int /*<<< orphan*/  XSAVE64 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

void
FUNC3(thread_t thread, boolean_t is_64bit)
{
	struct x86_fx_thread_state *ifps = thread->machine.ifps;
	FUNC0();

	if (ifps && ifps->fp_valid) {
		if (FUNC2(thread) == FP) {
			ifps->fp_save_layout = is_64bit ? FXSAVE64 : FXSAVE32;
		} else {
			ifps->fp_save_layout = is_64bit ? XSAVE64 : XSAVE32;
		}
	}
	FUNC1();
}