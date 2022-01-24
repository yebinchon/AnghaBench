#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  im; int /*<<< orphan*/  re; } ;
typedef  int /*<<< orphan*/  FFTDouble ;
typedef  TYPE_1__ FFTComplex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  sqrthalf ; 

__attribute__((used)) static void FUNC4(FFTComplex *z)
{
    FFTDouble t1, t2, t3, t4, t5, t6;

    FUNC3(z);

    FUNC0(t1, z[5].re, z[4].re, -z[5].re);
    FUNC0(t2, z[5].im, z[4].im, -z[5].im);
    FUNC0(t5, z[7].re, z[6].re, -z[7].re);
    FUNC0(t6, z[7].im, z[6].im, -z[7].im);

    FUNC1(z[0],z[2],z[4],z[6]);
    FUNC2(z[1],z[3],z[5],z[7],sqrthalf,sqrthalf);
}