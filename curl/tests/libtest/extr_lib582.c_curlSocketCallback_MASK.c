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
struct ReadWriteSockets {int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
typedef  int /*<<< orphan*/  curl_socket_t ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int CURL_POLL_IN ; 
 int CURL_POLL_INOUT ; 
 int CURL_POLL_OUT ; 
 int CURL_POLL_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(CURL *easy, curl_socket_t s, int action,
                              void *userp, void *socketp)
{
  struct ReadWriteSockets* sockets = userp;

  (void)easy; /* unused */
  (void)socketp; /* unused */

  if(action == CURL_POLL_IN || action == CURL_POLL_INOUT)
    FUNC0(&sockets->read, s, "read");

  if(action == CURL_POLL_OUT || action == CURL_POLL_INOUT)
    FUNC0(&sockets->write, s, "write");

  if(action == CURL_POLL_REMOVE) {
    FUNC1(&sockets->read, s, 1);
    FUNC1(&sockets->write, s, 0);
  }

  return 0;
}