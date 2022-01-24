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
struct sender_data {int workload; int /*<<< orphan*/  queue; int /*<<< orphan*/  id; } ;
struct message {TYPE_1__* frame; int /*<<< orphan*/  magic; } ;
struct TYPE_4__ {int width; int height; int /*<<< orphan*/  format; int /*<<< orphan*/ * metadata; } ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGBA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  MAGIC ; 
 char* FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 () ; 

__attribute__((used)) static void *FUNC12(void *arg)
{
    int i, ret = 0;
    struct sender_data *wd = arg;

    FUNC7(NULL, AV_LOG_INFO, "sender #%d: workload=%d\n", wd->id, wd->workload);
    for (i = 0; i < wd->workload; i++) {
        if (FUNC11() % wd->workload < wd->workload / 10) {
            FUNC7(NULL, AV_LOG_INFO, "sender #%d: flushing the queue\n", wd->id);
            FUNC8(wd->queue);
        } else {
            char *val;
            AVDictionary *meta = NULL;
            struct message msg = {
                .magic = MAGIC,
                .frame = FUNC4(),
            };

            if (!msg.frame) {
                ret = FUNC0(ENOMEM);
                break;
            }

            /* we add some metadata to identify the frames */
            val = FUNC1("frame %d/%d from sender %d",
                              i + 1, wd->workload, wd->id);
            if (!val) {
                FUNC5(&msg.frame);
                ret = FUNC0(ENOMEM);
                break;
            }
            ret = FUNC2(&meta, "sig", val, AV_DICT_DONT_STRDUP_VAL);
            if (ret < 0) {
                FUNC5(&msg.frame);
                break;
            }
            msg.frame->metadata = meta;

            /* allocate a real frame in order to simulate "real" work */
            msg.frame->format = AV_PIX_FMT_RGBA;
            msg.frame->width  = 320;
            msg.frame->height = 240;
            ret = FUNC6(msg.frame, 32);
            if (ret < 0) {
                FUNC5(&msg.frame);
                break;
            }

            /* push the frame in the common queue */
            FUNC7(NULL, AV_LOG_INFO, "sender #%d: sending my work (%d/%d frame:%p)\n",
                   wd->id, i + 1, wd->workload, msg.frame);
            ret = FUNC9(wd->queue, &msg, 0);
            if (ret < 0) {
                FUNC5(&msg.frame);
                break;
            }
        }
    }
    FUNC7(NULL, AV_LOG_INFO, "sender #%d: my work is done here (%s)\n",
           wd->id, FUNC3(ret));
    FUNC10(wd->queue, ret < 0 ? ret : AVERROR_EOF);
    return NULL;
}