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
typedef  int /*<<< orphan*/  GETHOSTNAME_TYPE_ARG2 ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 

int FUNC2(char *name, GETHOSTNAME_TYPE_ARG2 namelen)
{
  const char *force_hostname = FUNC0("CURL_GETHOSTNAME");
  if(force_hostname) {
    FUNC1(name, force_hostname, namelen);
    name[namelen-1] = '\0';
    return 0;
  }

  /* LD_PRELOAD used, but no hostname set, we'll just return a failure */
  return -1;
}