#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  curl_socket_t ;
struct TYPE_9__ {int /*<<< orphan*/  multi; } ;
struct TYPE_8__ {int /*<<< orphan*/  ch; TYPE_2__* global; } ;
typedef  TYPE_1__ SockInfo ;
typedef  TYPE_2__ GlobalInfo ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(curl_socket_t s, CURL *easy, int action, GlobalInfo *g)
{
  SockInfo *fdp = FUNC2(sizeof(SockInfo));

  fdp->global = g;
  fdp->ch = FUNC1(s);
  FUNC3(fdp, s, easy, action, g);
  FUNC0(g->multi, s, fdp);
}