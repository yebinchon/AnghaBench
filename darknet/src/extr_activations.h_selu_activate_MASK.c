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
 int FUNC0 (float) ; 

__attribute__((used)) static inline float FUNC1(float x){return (x >= 0)*1.0507*x + (x < 0)*1.0507*1.6732*(FUNC0(x)-1);}