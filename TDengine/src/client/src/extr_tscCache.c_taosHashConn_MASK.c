#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int maxSessions; } ;
typedef  TYPE_1__ SConnCache ;

/* Variables and functions */

int FUNC0(void *handle, uint32_t ip, short port, char *user) {
  SConnCache *pObj = (SConnCache *)handle;
  int         hash = 0;
  // size_t    user_len = strlen(user);

  hash = ip >> 16;
  hash += (unsigned short)(ip & 0xFFFF);
  hash += (unsigned short)port;
  while (*user != '\0') {
    hash += *user;
    user++;
  }

  hash = hash % pObj->maxSessions;

  return hash;
}