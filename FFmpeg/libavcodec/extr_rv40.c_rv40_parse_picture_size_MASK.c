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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rv40_standard_heights ; 
 int /*<<< orphan*/  rv40_standard_widths ; 

__attribute__((used)) static void FUNC1(GetBitContext *gb, int *w, int *h)
{
    *w = FUNC0(gb, rv40_standard_widths);
    *h = FUNC0(gb, rv40_standard_heights);
}