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
struct TYPE_3__ {int /*<<< orphan*/  im; int /*<<< orphan*/  re; } ;
typedef  int /*<<< orphan*/  FFTDouble ;
typedef  TYPE_1__ FFTComplex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(FFTComplex *z)
{
    FFTDouble t1, t2, t3, t4, t5, t6, t7, t8;

    FUNC0(t3, t1, z[0].re, z[1].re);
    FUNC0(t8, t6, z[3].re, z[2].re);
    FUNC0(z[2].re, z[0].re, t1, t6);
    FUNC0(t4, t2, z[0].im, z[1].im);
    FUNC0(t7, t5, z[2].im, z[3].im);
    FUNC0(z[3].im, z[1].im, t4, t8);
    FUNC0(z[3].re, z[1].re, t3, t7);
    FUNC0(z[2].im, z[0].im, t2, t5);
}