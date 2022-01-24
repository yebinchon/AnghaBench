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
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 

void *FUNC2(const void *src, size_t length)
{
  void *buffer = FUNC0(length);
  if(!buffer)
    return NULL; /* fail */

  FUNC1(buffer, src, length);

  return buffer;
}