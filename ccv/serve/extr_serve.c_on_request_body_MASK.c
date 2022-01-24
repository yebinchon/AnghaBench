#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  resource; int /*<<< orphan*/  context; TYPE_1__* dispatcher; } ;
typedef  TYPE_2__ ebb_request_extras ;
struct TYPE_7__ {scalar_t__ multipart_boundary_len; scalar_t__ data; } ;
typedef  TYPE_3__ ebb_request ;
struct TYPE_5__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* parse ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  URI_CONTENT_BODY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(ebb_request* request, const char* at, size_t length)
{
	ebb_request_extras* request_extras = (ebb_request_extras*)request->data;
	if (request_extras->dispatcher && request_extras->dispatcher->parse && request->multipart_boundary_len == 0)
		request_extras->context = request_extras->dispatcher->parse(request_extras->dispatcher->context, request_extras->context, request_extras->resource, at, length, URI_CONTENT_BODY, -1);
}