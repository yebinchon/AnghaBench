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
struct receiver_data {int workload; int /*<<< orphan*/  queue; int /*<<< orphan*/  id; } ;
struct message {scalar_t__ magic; TYPE_2__* frame; } ;
struct TYPE_5__ {int /*<<< orphan*/ * metadata; } ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 () ; 

__attribute__((used)) static void *FUNC9(void *arg)
{
    int i, ret = 0;
    struct receiver_data *rd = arg;

    for (i = 0; i < rd->workload; i++) {
        if (FUNC8() % rd->workload < rd->workload / 10) {
            FUNC3(NULL, AV_LOG_INFO, "receiver #%d: flushing the queue, "
                   "discarding %d message(s)\n", rd->id,
                   FUNC5(rd->queue));
            FUNC4(rd->queue);
        } else {
            struct message msg;
            AVDictionary *meta;
            AVDictionaryEntry *e;

            ret = FUNC6(rd->queue, &msg, 0);
            if (ret < 0)
                break;
            FUNC0(msg.magic == MAGIC);
            meta = msg.frame->metadata;
            e = FUNC1(meta, "sig", NULL, 0);
            FUNC3(NULL, AV_LOG_INFO, "got \"%s\" (%p)\n", e->value, msg.frame);
            FUNC2(&msg.frame);
        }
    }

    FUNC3(NULL, AV_LOG_INFO, "consumed enough (%d), stop\n", i);
    FUNC7(rd->queue, ret < 0 ? ret : AVERROR_EOF);

    return NULL;
}