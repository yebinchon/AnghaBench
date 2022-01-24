#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Q68WriteFunc ;
typedef  int /*<<< orphan*/  M68K_WRITE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * real_writeb ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/ * writeb_trampoline ; 

__attribute__((used)) static void FUNC1(M68K_WRITE *func)
{
#ifdef NEED_TRAMPOLINE
    real_writeb = func;
    q68_set_writeb_func(state, writeb_trampoline);
#else
    FUNC0(state, (Q68WriteFunc *)func);
#endif
}