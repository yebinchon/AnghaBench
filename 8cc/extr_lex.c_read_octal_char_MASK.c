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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(int c) {
    int r = c - '0';
    if (!FUNC0())
        return r;
    r = (r << 3) | (FUNC1() - '0');
    if (!FUNC0())
        return r;
    return (r << 3) | (FUNC1() - '0');
}