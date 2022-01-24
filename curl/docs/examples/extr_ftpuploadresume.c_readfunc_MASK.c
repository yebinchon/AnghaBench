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
 size_t CURL_READFUNC_ABORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (void*,size_t,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC2(void *ptr, size_t size, size_t nmemb, void *stream)
{
  FILE *f = stream;
  size_t n;

  if(FUNC0(f))
    return CURL_READFUNC_ABORT;

  n = FUNC1(ptr, size, nmemb, f) * size;

  return n;
}