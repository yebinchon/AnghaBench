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
typedef  int /*<<< orphan*/  curl_socket_t ;
struct TYPE_4__ {int /*<<< orphan*/  event; int /*<<< orphan*/  sockfd; } ;
typedef  TYPE_1__ curl_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  curl_perform ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static curl_context_t* FUNC2(curl_socket_t sockfd)
{
  curl_context_t *context;

  context = (curl_context_t *) FUNC1(sizeof(*context));

  context->sockfd = sockfd;

  context->event = FUNC0(base, sockfd, 0, curl_perform, context);

  return context;
}