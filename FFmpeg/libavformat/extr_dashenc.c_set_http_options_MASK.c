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
struct TYPE_3__ {int timeout; scalar_t__ http_persistent; scalar_t__ user_agent; scalar_t__ method; } ;
typedef  TYPE_1__ DASHContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(AVDictionary **options, DASHContext *c)
{
    if (c->method)
        FUNC0(options, "method", c->method, 0);
    if (c->user_agent)
        FUNC0(options, "user_agent", c->user_agent, 0);
    if (c->http_persistent)
        FUNC1(options, "multiple_requests", 1, 0);
    if (c->timeout >= 0)
        FUNC1(options, "timeout", c->timeout, 0);
}