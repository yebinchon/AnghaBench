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
 int* g22_to_d ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int* sRGB_to_d ; 

__attribute__((used)) static void
FUNC2(void)
{
   int i;

   sRGB_to_d[0] = 0;
   for (i=1; i<255; ++i)
      sRGB_to_d[i] = FUNC0(i/255.);
   sRGB_to_d[255] = 1;

   g22_to_d[0] = 0;
   for (i=1; i<255; ++i)
      g22_to_d[i] = FUNC1(i/255., 1/.45455);
   g22_to_d[255] = 1;
}