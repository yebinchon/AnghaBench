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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static inline int32_t FUNC1(int64_t a, int bits)
{
    if (bits > 0)
        return (int32_t)((a + (FUNC0(1) << (bits - 1))) >> bits);
    else
        return (int32_t)a;
}