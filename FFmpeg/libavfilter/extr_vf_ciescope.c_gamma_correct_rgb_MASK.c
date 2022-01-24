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
struct ColorSystem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ColorSystem const* const,double* const) ; 

__attribute__((used)) static void
FUNC1(const struct ColorSystem * const cs,
                  double * const r,
                  double * const g,
                  double * const b)
{
    FUNC0(cs, r);
    FUNC0(cs, g);
    FUNC0(cs, b);
}