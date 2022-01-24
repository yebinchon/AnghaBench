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
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ uv_poll_t ;
struct TYPE_5__ {int /*<<< orphan*/  sockfd; } ;
typedef  TYPE_2__ curl_context_t ;

/* Variables and functions */
 int CURL_CSELECT_IN ; 
 int CURL_CSELECT_OUT ; 
 int UV_READABLE ; 
 int UV_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  curl_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC2(uv_poll_t *req, int status, int events)
{
  int running_handles;
  int flags = 0;
  curl_context_t *context;

  if(events & UV_READABLE)
    flags |= CURL_CSELECT_IN;
  if(events & UV_WRITABLE)
    flags |= CURL_CSELECT_OUT;

  context = (curl_context_t *) req->data;

  FUNC1(curl_handle, context->sockfd, flags,
                           &running_handles);

  FUNC0();
}