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
 scalar_t__ FUNC0 (char**,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(char** out, const char* in)
{
  size_t insize = FUNC1(in), i = 0;
  if(FUNC0(out, insize))
  {
    for(i = 0; i < insize; i++)
    {
      (*out)[i] = in[i];
    }
  }
}