#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct config {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; int elements; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  redisContext ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 scalar_t__ REDIS_REPLY_ARRAY ; 
 scalar_t__ REDIS_REPLY_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct config) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__** FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,long long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 long long FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct config config) {
    redisContext *c = FUNC1(config);
    redisReply **replies;
    int i, num;
    long long t1, t2;

    FUNC10("Throughput:\n");
    for (i = 0; i < 500; i++)
        FUNC4(FUNC8(c,"LPUSH mylist foo"));

    num = 1000;
    replies = FUNC5(sizeof(redisReply*)*num);
    t1 = FUNC11();
    for (i = 0; i < num; i++) {
        replies[i] = FUNC8(c,"PING");
        FUNC0(replies[i] != NULL && replies[i]->type == REDIS_REPLY_STATUS);
    }
    t2 = FUNC11();
    for (i = 0; i < num; i++) FUNC4(replies[i]);
    FUNC3(replies);
    FUNC6("\t(%dx PING: %.3fs)\n", num, (t2-t1)/1000000.0);

    replies = FUNC5(sizeof(redisReply*)*num);
    t1 = FUNC11();
    for (i = 0; i < num; i++) {
        replies[i] = FUNC8(c,"LRANGE mylist 0 499");
        FUNC0(replies[i] != NULL && replies[i]->type == REDIS_REPLY_ARRAY);
        FUNC0(replies[i] != NULL && replies[i]->elements == 500);
    }
    t2 = FUNC11();
    for (i = 0; i < num; i++) FUNC4(replies[i]);
    FUNC3(replies);
    FUNC6("\t(%dx LRANGE with 500 elements: %.3fs)\n", num, (t2-t1)/1000000.0);

    num = 10000;
    replies = FUNC5(sizeof(redisReply*)*num);
    for (i = 0; i < num; i++)
        FUNC7(c,"PING");
    t1 = FUNC11();
    for (i = 0; i < num; i++) {
        FUNC0(FUNC9(c, (void*)&replies[i]) == REDIS_OK);
        FUNC0(replies[i] != NULL && replies[i]->type == REDIS_REPLY_STATUS);
    }
    t2 = FUNC11();
    for (i = 0; i < num; i++) FUNC4(replies[i]);
    FUNC3(replies);
    FUNC6("\t(%dx PING (pipelined): %.3fs)\n", num, (t2-t1)/1000000.0);

    replies = FUNC5(sizeof(redisReply*)*num);
    for (i = 0; i < num; i++)
        FUNC7(c,"LRANGE mylist 0 499");
    t1 = FUNC11();
    for (i = 0; i < num; i++) {
        FUNC0(FUNC9(c, (void*)&replies[i]) == REDIS_OK);
        FUNC0(replies[i] != NULL && replies[i]->type == REDIS_REPLY_ARRAY);
        FUNC0(replies[i] != NULL && replies[i]->elements == 500);
    }
    t2 = FUNC11();
    for (i = 0; i < num; i++) FUNC4(replies[i]);
    FUNC3(replies);
    FUNC6("\t(%dx LRANGE with 500 elements (pipelined): %.3fs)\n", num, (t2-t1)/1000000.0);

    FUNC2(c, 0);
}