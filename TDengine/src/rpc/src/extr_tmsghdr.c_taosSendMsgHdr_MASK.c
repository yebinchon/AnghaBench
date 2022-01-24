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
struct msghdr {scalar_t__ msg_iovlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct msghdr*,int /*<<< orphan*/ ) ; 

void FUNC1(void *hdr, int fd) {
  struct msghdr *msgHdr = (struct msghdr *)hdr;
  FUNC0(fd, msgHdr, 0);
  msgHdr->msg_iovlen = 0;
}