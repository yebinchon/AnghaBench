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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int blacklist_num_servers ; 
 int blacklist_num_sites ; 
 int num_handles ; 
 int /*<<< orphan*/ * server_blacklist ; 
 int /*<<< orphan*/ * site_blacklist ; 
 int /*<<< orphan*/ * urlstring ; 

__attribute__((used)) static void FUNC1(void)
{
  int i;
  for(i = 0; i < num_handles; i++) {
    FUNC0(urlstring[i]);
  }
  for(i = 0; i < blacklist_num_servers; i++) {
    FUNC0(server_blacklist[i]);
  }
  for(i = 0; i < blacklist_num_sites; i++) {
    FUNC0(site_blacklist[i]);
  }
}