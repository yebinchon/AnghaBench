#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  curl_socket_t ;
struct TYPE_5__ {int /*<<< orphan*/  event; int /*<<< orphan*/  sockfd; } ;
typedef  TYPE_1__ curl_context_t ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
#define  CURL_POLL_IN 131 
#define  CURL_POLL_INOUT 130 
#define  CURL_POLL_OUT 129 
#define  CURL_POLL_REMOVE 128 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  base ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curl_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  curl_perform ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(CURL *easy, curl_socket_t s, int action, void *userp,
                  void *socketp)
{
  curl_context_t *curl_context;
  int events = 0;

  switch(action) {
  case CURL_POLL_IN:
  case CURL_POLL_OUT:
  case CURL_POLL_INOUT:
    curl_context = socketp ?
      (curl_context_t *) socketp : FUNC1(s);

    FUNC2(curl_handle, s, (void *) curl_context);

    if(action != CURL_POLL_IN)
      events |= EV_WRITE;
    if(action != CURL_POLL_OUT)
      events |= EV_READ;

    events |= EV_PERSIST;

    FUNC6(curl_context->event);
    FUNC5(curl_context->event, base, curl_context->sockfd, events,
      curl_perform, curl_context);
    FUNC4(curl_context->event, NULL);

    break;
  case CURL_POLL_REMOVE:
    if(socketp) {
      FUNC6(((curl_context_t*) socketp)->event);
      FUNC3((curl_context_t*) socketp);
      FUNC2(curl_handle, s, NULL);
    }
    break;
  default:
    FUNC0();
  }

  return 0;
}