
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {TYPE_5__ timeout; int port; int host; } ;
struct config {TYPE_1__ tcp; } ;
struct TYPE_7__ {scalar_t__ err; } ;
typedef TYPE_2__ redisContext ;
typedef int LONG_MAX ;


 scalar_t__ REDIS_ERR_IO ;
 TYPE_2__* redisConnectWithTimeout (int ,int ,TYPE_5__) ;
 int redisFree (TYPE_2__*) ;
 int test (char*) ;
 int test_cond (int) ;

__attribute__((used)) static void test_invalid_timeout_errors(struct config config) {
    redisContext *c;

    test("Set error when an invalid timeout usec value is given to redisConnectWithTimeout: ");

    config.tcp.timeout.tv_sec = 0;
    config.tcp.timeout.tv_usec = 10000001;

    c = redisConnectWithTimeout(config.tcp.host, config.tcp.port, config.tcp.timeout);

    test_cond(c->err == REDIS_ERR_IO);

    test("Set error when an invalid timeout sec value is given to redisConnectWithTimeout: ");

    config.tcp.timeout.tv_sec = (((LONG_MAX) - 999) / 1000) + 1;
    config.tcp.timeout.tv_usec = 0;

    c = redisConnectWithTimeout(config.tcp.host, config.tcp.port, config.tcp.timeout);

    test_cond(c->err == REDIS_ERR_IO);

    redisFree(c);
}
