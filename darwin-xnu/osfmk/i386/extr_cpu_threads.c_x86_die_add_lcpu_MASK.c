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
struct TYPE_5__ {TYPE_2__* die; struct TYPE_5__* next_in_die; } ;
typedef  TYPE_1__ x86_lcpu_t ;
struct TYPE_6__ {TYPE_1__* lcpus; } ;
typedef  TYPE_2__ x86_die_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(x86_die_t *die, x86_lcpu_t *lcpu)
{
    FUNC0(die != NULL);
    FUNC0(lcpu != NULL);
 
    lcpu->next_in_die = die->lcpus;
    lcpu->die = die;
    die->lcpus = lcpu;
}