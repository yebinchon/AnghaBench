#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *avctx, AVStream *st,
                       int (*parse)(AVFormatContext *avctx, AVStream *st,
                                    const char *name, int size))
{
    unsigned count;
    int i;

    AVIOContext *pb = avctx->pb;
    FUNC4(pb, 4);
    count = FUNC2(pb);
    FUNC4(pb, 4);
    for (i = 0; i < count; i++) {
        char name[17];
        int size;

        if (FUNC1(pb))
            return AVERROR_EOF;

        FUNC3(pb, name, 16);
        name[sizeof(name) - 1] = 0;
        size = FUNC2(pb);
        if (size < 0) {
            FUNC0(avctx, AV_LOG_ERROR, "entry size %d is invalid\n", size);
            return AVERROR_INVALIDDATA;
        }
        if (parse(avctx, st, name, size) < 0) {
            FUNC5(avctx, "Variable %s", name);
            FUNC4(pb, size);
        }
    }
    return 0;
}