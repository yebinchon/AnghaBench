#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; char* str; TYPE_2__** element; } ;
typedef  TYPE_3__ redisReply ;
struct TYPE_10__ {scalar_t__ pattern; } ;
struct TYPE_8__ {unsigned int elements; TYPE_1__** element; int /*<<< orphan*/  str; } ;
struct TYPE_7__ {char* str; } ;

/* Variables and functions */
 scalar_t__ REDIS_REPLY_ERROR ; 
 TYPE_6__ config ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(void) {
    redisReply *reply;
    unsigned long long cur = 0;

    do {
        if (config.pattern)
            reply = FUNC3(context,"SCAN %llu MATCH %s",
                cur,config.pattern);
        else
            reply = FUNC3(context,"SCAN %llu",cur);
        if (reply == NULL) {
            FUNC2("I/O error\n");
            FUNC0(1);
        } else if (reply->type == REDIS_REPLY_ERROR) {
            FUNC2("ERROR: %s\n", reply->str);
            FUNC0(1);
        } else {
            unsigned int j;

            cur = FUNC4(reply->element[0]->str,NULL,10);
            for (j = 0; j < reply->element[1]->elements; j++)
                FUNC2("%s\n", reply->element[1]->element[j]->str);
        }
        FUNC1(reply);
    } while(cur != 0);

    FUNC0(0);
}