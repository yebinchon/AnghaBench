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
 char* FUNC0 (char*,char const*,char const*,...) ; 

char *FUNC1(const char *service, const char *host,
                          const char *realm)
{
  char *spn = NULL;

  /* Generate our SPN */
  if(host && realm)
    spn = FUNC0("%s/%s@%s", service, host, realm);
  else if(host)
    spn = FUNC0("%s/%s", service, host);
  else if(realm)
    spn = FUNC0("%s@%s", service, realm);

  /* Return our newly allocated SPN */
  return spn;
}