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
typedef  int stbi_uc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static stbi_uc* FUNC2(stbi_uc *out, stbi_uc *in_near, stbi_uc *in_far, int w, int hs)
{
   // need to generate two samples vertically for every one in input
   int i;
   FUNC0(hs);
   for (i=0; i < w; ++i)
      out[i] = FUNC1(3*in_near[i] + in_far[i] + 2);
   return out;
}