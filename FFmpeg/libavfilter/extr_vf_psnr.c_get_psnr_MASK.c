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
typedef  double uint64_t ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (int) ; 

__attribute__((used)) static inline double FUNC2(double mse, uint64_t nb_frames, int max)
{
    return 10.0 * FUNC0(FUNC1(max) / (mse / nb_frames));
}