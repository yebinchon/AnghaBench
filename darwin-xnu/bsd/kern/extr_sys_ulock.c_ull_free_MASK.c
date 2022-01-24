#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ull_owner; scalar_t__ ull_turnstile; } ;
typedef  TYPE_1__ ull_t ;

/* Variables and functions */
 scalar_t__ THREAD_NULL ; 
 scalar_t__ TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ull_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(ull_t *ull)
{
	FUNC0(ull->ull_owner == THREAD_NULL);
	FUNC0(ull->ull_turnstile == TURNSTILE_NULL);

	FUNC1(ull);

	FUNC2(ull);

	FUNC3(ull_zone, ull);
}