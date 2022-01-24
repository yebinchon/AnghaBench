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
typedef  int /*<<< orphan*/  FFTSample ;
typedef  int /*<<< orphan*/  FFTDouble ;
typedef  int /*<<< orphan*/  FFTComplex ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_cos_16 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqrthalf ; 

__attribute__((used)) static void FUNC5(FFTComplex *z)
{
    FFTDouble t1, t2, t3, t4, t5, t6;
    FFTSample cos_16_1 = FUNC0(ff_cos_16)[1];
    FFTSample cos_16_3 = FUNC0(ff_cos_16)[3];

    FUNC4(z);
    FUNC3(z+8);
    FUNC3(z+12);

    FUNC2(z[0],z[4],z[8],z[12]);
    FUNC1(z[2],z[6],z[10],z[14],sqrthalf,sqrthalf);
    FUNC1(z[1],z[5],z[9],z[13],cos_16_1,cos_16_3);
    FUNC1(z[3],z[7],z[11],z[15],cos_16_3,cos_16_1);
}