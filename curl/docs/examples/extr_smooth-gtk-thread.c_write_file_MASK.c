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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (void*,size_t,size_t,int /*<<< orphan*/ *) ; 

size_t FUNC1(void *ptr, size_t size, size_t nmemb, FILE *stream)
{
  /* printf("write_file\n"); */
  return FUNC0(ptr, size, nmemb, stream);
}