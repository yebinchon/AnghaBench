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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uploadthis ; 

__attribute__((used)) static size_t FUNC3(void  *ptr,
                           size_t size,
                           size_t nmemb,
                           void *clientp)
{
  int *counter = (int *)clientp;

  if(*counter) {
    /* only do this once and then require a clearing of this */
    FUNC0(stderr, "READ ALREADY DONE!\n");
    return 0;
  }
  (*counter)++; /* bump */

  if(size * nmemb > FUNC2(uploadthis)) {
    FUNC0(stderr, "READ!\n");
    FUNC1(ptr, uploadthis);
    return FUNC2(uploadthis);
  }
  FUNC0(stderr, "READ NOT FINE!\n");
  return 0;
}