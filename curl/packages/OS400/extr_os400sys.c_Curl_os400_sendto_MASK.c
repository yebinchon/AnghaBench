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

/* Variables and functions */
 int FUNC0 (int,char*,int,int,struct sockaddr*,int) ; 
 int FUNC1 (struct sockaddr_storage*,struct sockaddr*,int) ; 

int
FUNC2(int sd, char * buffer, int buflen, int flags,
                                struct sockaddr * dstaddr, int addrlen)
{
  int i;
  struct sockaddr_storage laddr;

  i = FUNC1(&laddr, dstaddr, addrlen);

  if(i < 0)
    return -1;

  return FUNC0(sd, buffer, buflen, flags, (struct sockaddr *) &laddr, i);
}