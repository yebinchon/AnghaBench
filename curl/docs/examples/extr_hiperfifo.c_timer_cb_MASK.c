#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  still_running; int /*<<< orphan*/  multi; } ;
typedef  TYPE_1__ GlobalInfo ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_SOCKET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int fd, short kind, void *userp)
{
  GlobalInfo *g = (GlobalInfo *)userp;
  CURLMcode rc;
  (void)fd;
  (void)kind;

  rc = FUNC1(g->multi,
                                  CURL_SOCKET_TIMEOUT, 0, &g->still_running);
  FUNC2("timer_cb: curl_multi_socket_action", rc);
  FUNC0(g);
}