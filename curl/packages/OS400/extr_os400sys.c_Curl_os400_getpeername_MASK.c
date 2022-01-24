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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  laddr ;

/* Variables and functions */
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int FUNC1 (struct sockaddr*,int,struct sockaddr_storage*,int) ; 

int
FUNC2(int sd, struct sockaddr *addr, int *addrlen)
{
  struct sockaddr_storage laddr;
  int laddrlen = sizeof(laddr);
  int retcode = FUNC0(sd, (struct sockaddr *) &laddr, &laddrlen);

  if(!retcode) {
    laddrlen = FUNC1(addr, *addrlen, &laddr, laddrlen);
    if(laddrlen < 0)
      return laddrlen;
    *addrlen = laddrlen;
  }

  return retcode;
}