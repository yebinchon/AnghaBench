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
typedef  void* calloc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int seen_calloc ; 

void *FUNC1(size_t nmemb, size_t size)
{
  if(!seen_calloc) {
    FUNC0("seen custom_calloc()\n");
    seen_calloc = 1;
  }
  return (calloc)(nmemb, size);
}