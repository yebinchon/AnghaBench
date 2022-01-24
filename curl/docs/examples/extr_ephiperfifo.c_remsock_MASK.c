#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  epfd; } ;
struct TYPE_6__ {int sockfd; } ;
typedef  TYPE_1__ SockInfo ;
typedef  TYPE_2__ GlobalInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLL_CTL_DEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(SockInfo *f, GlobalInfo* g)
{
  if(f) {
    if(f->sockfd) {
      if(FUNC0(g->epfd, EPOLL_CTL_DEL, f->sockfd, NULL))
        FUNC1(stderr, "EPOLL_CTL_DEL failed for fd: %d : %s\n",
                f->sockfd, FUNC3(errno));
    }
    FUNC2(f);
  }
}