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
 scalar_t__ FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int*) ; 

__attribute__((used)) static int FUNC2(void)
{
   char response[80] = "";
   int gpu_mem = 0;
   if (FUNC0(response, sizeof response, "get_mem gpu") == 0)
      FUNC1(response, "gpu", &gpu_mem);
   return gpu_mem;
}