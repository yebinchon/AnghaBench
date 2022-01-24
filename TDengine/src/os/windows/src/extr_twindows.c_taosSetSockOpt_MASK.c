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
 int SOL_SOCKET ; 
 int SOL_TCP ; 
 int TCP_KEEPCNT ; 
 int TCP_KEEPIDLE ; 
 int TCP_KEEPINTVL ; 
 int FUNC0 (int,int,int,void*,int) ; 

int FUNC1(int socketfd, int level, int optname, void *optval, int optlen) {
  if (level == SOL_SOCKET && optname == TCP_KEEPCNT) {
    return 0;
  }

  if (level == SOL_TCP && optname == TCP_KEEPIDLE) {
    return 0;
  }

  if (level == SOL_TCP && optname == TCP_KEEPINTVL) {
    return 0;
  }

  return FUNC0(socketfd, level, optname, optval, optlen);
}