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
 size_t consumed ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(void *ptr, size_t size, size_t nmemb, void *stream)
{
  size_t  amount = nmemb * size; /* Total bytes curl wants */

  if(consumed == FUNC1(data)) {
    return 0;
  }

  if(amount > FUNC1(data)-consumed) {
    amount = FUNC1(data);
  }

  consumed += amount;
  (void)stream;
  FUNC0(ptr, data, amount);
  return amount;
}