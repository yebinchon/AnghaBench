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
 size_t FUNC0 (char*,char const*,size_t) ; 
 size_t FUNC1 (char*) ; 

size_t FUNC2(char *dest, const char *source, size_t size)
{
   size_t len = FUNC1(dest);

   dest += len;

   if (len > size)
      size = 0;
   else
      size -= len;

   return len + FUNC0(dest, source, size);
}