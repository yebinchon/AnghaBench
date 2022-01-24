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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,double const) ; 

__attribute__((used)) static double FUNC2(AVFrame *out, int nb_out, int nb_in)
{
    char buf[32];
    const double ratio = (double)nb_out / nb_in;
    FUNC1(buf, sizeof(buf), "%f", ratio);
    FUNC0(&out->metadata, "lavfi.color_quant_ratio", buf, 0);
    return ratio;
}