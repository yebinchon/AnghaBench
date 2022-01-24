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
 size_t blacklist_num_servers ; 
 size_t blacklist_num_sites ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 size_t num_handles ; 
 int /*<<< orphan*/ ** server_blacklist ; 
 int /*<<< orphan*/ ** site_blacklist ; 
 void* FUNC4 (char*) ; 
 void** urlstring ; 
 int* urltime ; 

__attribute__((used)) static int FUNC5(const char *filename)
{
  FILE *f;
  int filetime;
  char buf[200];

  num_handles = 0;
  blacklist_num_sites = 0;
  blacklist_num_servers = 0;

  f = FUNC2(filename, "rb");
  if(!f)
    return 0;

  while(!FUNC1(f)) {
    if(FUNC3(f, "%d %199s\n", &filetime, buf)) {
      urltime[num_handles] = filetime;
      urlstring[num_handles] = FUNC4(buf);
      num_handles++;
      continue;
    }

    if(FUNC3(f, "blacklist_site %199s\n", buf)) {
      site_blacklist[blacklist_num_sites] = FUNC4(buf);
      blacklist_num_sites++;
      continue;
    }

    break;
  }
  FUNC0(f);

  site_blacklist[blacklist_num_sites] = NULL;
  server_blacklist[blacklist_num_servers] = NULL;
  return num_handles;
}