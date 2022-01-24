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
struct TYPE_3__ {int /*<<< orphan*/  dist_coeff; int /*<<< orphan*/  pre_filter_buf; int /*<<< orphan*/ * pre_filter_context; } ;
typedef  TYPE_1__ FilterParam ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(FilterParam *f)
{
    if (f->pre_filter_context) {
        FUNC1(f->pre_filter_context);
        f->pre_filter_context = NULL;
    }
    FUNC0(&f->pre_filter_buf);
    FUNC0(&f->dist_coeff);
}