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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  realHeaderSize ; 

size_t FUNC1(void *ptr, size_t size, size_t nmemb, void *stream)
{
  (void)ptr;
  (void)stream;

  realHeaderSize += FUNC0(size * nmemb);

  return nmemb * size;
}