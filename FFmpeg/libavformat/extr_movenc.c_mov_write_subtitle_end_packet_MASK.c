#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* int64_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_5__ {int size; int stream_index; scalar_t__ duration; void* dts; void* pts; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s,
                                         int stream_index,
                                         int64_t dts) {
    AVPacket end;
    uint8_t data[2] = {0};
    int ret;

    FUNC0(&end);
    end.size = sizeof(data);
    end.data = data;
    end.pts = dts;
    end.dts = dts;
    end.duration = 0;
    end.stream_index = stream_index;

    ret = FUNC2(s, &end);
    FUNC1(&end);

    return ret;
}