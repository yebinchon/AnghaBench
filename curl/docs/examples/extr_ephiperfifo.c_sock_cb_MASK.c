#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int curl_socket_t ;
struct TYPE_4__ {size_t action; } ;
typedef  TYPE_1__ SockInfo ;
typedef  int /*<<< orphan*/  GlobalInfo ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURL_POLL_REMOVE ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(CURL *e, curl_socket_t s, int what, void *cbp, void *sockp)
{
  GlobalInfo *g = (GlobalInfo*) cbp;
  SockInfo *fdp = (SockInfo*) sockp;
  const char *whatstr[]={ "none", "IN", "OUT", "INOUT", "REMOVE" };

  FUNC1(MSG_OUT,
          "socket callback: s=%d e=%p what=%s ", s, e, whatstr[what]);
  if(what == CURL_POLL_REMOVE) {
    FUNC1(MSG_OUT, "\n");
    FUNC2(fdp, g);
  }
  else {
    if(!fdp) {
      FUNC1(MSG_OUT, "Adding data: %s\n", whatstr[what]);
      FUNC0(s, e, what, g);
    }
    else {
      FUNC1(MSG_OUT,
              "Changing action from %s to %s\n",
              whatstr[fdp->action], whatstr[what]);
      FUNC3(fdp, s, e, what, g);
    }
  }
  return 0;
}