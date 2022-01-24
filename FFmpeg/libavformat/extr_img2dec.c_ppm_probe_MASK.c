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
typedef  int /*<<< orphan*/  AVProbeData ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const AVProbeData *p)
{
    return FUNC0(p, 3) || FUNC0(p, 6) ? FUNC1(p) : 0;
}