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
struct sbg_parser {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC1 (struct sbg_parser*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct sbg_parser*,double*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,double,double,int*) ; 

__attribute__((used)) static int FUNC4(struct sbg_parser *p, int *vol)
{
    double v;

    if (!FUNC1(p, '/'))
        return 0;
    if (!FUNC2(p, &v))
        return AVERROR_INVALIDDATA;
    if (FUNC3(p->log, v, 0.01, vol))
        return FUNC0(ERANGE);
    return 1;
}