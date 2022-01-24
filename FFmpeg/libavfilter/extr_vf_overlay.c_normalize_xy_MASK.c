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
 int INT_MAX ; 
 scalar_t__ FUNC0 (double) ; 

__attribute__((used)) static inline int FUNC1(double d, int chroma_sub)
{
    if (FUNC0(d))
        return INT_MAX;
    return (int)d & ~((1 << chroma_sub) - 1);
}