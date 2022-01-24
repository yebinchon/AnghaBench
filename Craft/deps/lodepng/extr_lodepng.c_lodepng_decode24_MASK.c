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
 int /*<<< orphan*/  LCT_RGB ; 
 int FUNC0 (unsigned char**,unsigned int*,unsigned int*,unsigned char const*,size_t,int /*<<< orphan*/ ,int) ; 

unsigned FUNC1(unsigned char** out, unsigned* w, unsigned* h, const unsigned char* in, size_t insize)
{
  return FUNC0(out, w, h, in, insize, LCT_RGB, 8);
}