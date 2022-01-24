#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  curl_socket_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {TYPE_2__ poll_handle; int /*<<< orphan*/  sockfd; } ;
typedef  TYPE_1__ curl_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static curl_context_t* FUNC2(curl_socket_t sockfd)
{
  curl_context_t *context;

  context = (curl_context_t *) FUNC0(sizeof(*context));

  context->sockfd = sockfd;

  FUNC1(loop, &context->poll_handle, sockfd);
  context->poll_handle.data = context;

  return context;
}