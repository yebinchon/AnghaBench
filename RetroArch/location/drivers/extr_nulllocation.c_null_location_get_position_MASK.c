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

__attribute__((used)) static bool FUNC0(void *data, double *latitude,
      double *longitude, double *horiz_accuracy,
      double *vert_accuracy)
{
   *latitude  = 0.0;
   *longitude = 0.0;
   *horiz_accuracy  = 0.0;
   *vert_accuracy  = 0.0;
   return true;
}