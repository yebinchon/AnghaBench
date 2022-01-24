#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {TYPE_5__ timeout; int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;
struct config {TYPE_1__ tcp; } ;
struct TYPE_7__ {scalar_t__ err; } ;
typedef  TYPE_2__ redisContext ;
typedef  int LONG_MAX ;

/* Variables and functions */
 scalar_t__ REDIS_ERR_IO ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct config config) {
    redisContext *c;

    FUNC2("Set error when an invalid timeout usec value is given to redisConnectWithTimeout: ");

    config.tcp.timeout.tv_sec = 0;
    config.tcp.timeout.tv_usec = 10000001;

    c = FUNC0(config.tcp.host, config.tcp.port, config.tcp.timeout);

    FUNC3(c->err == REDIS_ERR_IO);

    FUNC2("Set error when an invalid timeout sec value is given to redisConnectWithTimeout: ");

    config.tcp.timeout.tv_sec = (((LONG_MAX) - 999) / 1000) + 1;
    config.tcp.timeout.tv_usec = 0;

    c = FUNC0(config.tcp.host, config.tcp.port, config.tcp.timeout);

    FUNC3(c->err == REDIS_ERR_IO);

    FUNC1(c);
}