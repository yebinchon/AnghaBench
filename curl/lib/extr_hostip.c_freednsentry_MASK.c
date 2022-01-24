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
struct Curl_dns_entry {scalar_t__ inuse; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_dns_entry*) ; 

__attribute__((used)) static void FUNC3(void *freethis)
{
  struct Curl_dns_entry *dns = (struct Curl_dns_entry *) freethis;
  FUNC1(dns && (dns->inuse>0));

  dns->inuse--;
  if(dns->inuse == 0) {
    FUNC0(dns->addr);
    FUNC2(dns);
  }
}