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
 int FUNC0 (void*,char*,long*) ; 

__attribute__((used)) static size_t FUNC1(void *ptr, size_t size, size_t nmemb,
                                   void *stream)
{
  int r;
  long len = 0;

  r = FUNC0(ptr, "Content-Length: %ld\n", &len);
  if(r)
    *((long *) stream) = len;

  return size * nmemb;
}