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
 size_t COOKIE_HASH_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC1(const char *domain, const size_t len)
{
  const char *end = domain + len;
  size_t h = 5381;

  while(domain < end) {
    h += h << 5;
    h ^= FUNC0(*domain++);
  }

  return (h % COOKIE_HASH_SIZE);
}