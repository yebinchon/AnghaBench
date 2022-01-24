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
struct TYPE_3__ {int /*<<< orphan*/  bitdepth; int /*<<< orphan*/  level; int /*<<< orphan*/  profile; } ;
typedef  TYPE_1__ VPCC ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s, AVCodecParameters *par,
                              AVRational *frame_rate, char *str, int size) {
    VPCC vpcc;
    int ret = FUNC3(s, par, frame_rate, &vpcc);
    if (ret == 0) {
        FUNC1(str, size, "vp09.%02d.%02d.%02d",
                    vpcc.profile, vpcc.level, vpcc.bitdepth);
    } else {
        // Default to just vp9 in case of error while finding out profile or level
        FUNC0(s, AV_LOG_WARNING, "Could not find VP9 profile and/or level\n");
        FUNC2(str, "vp9", size);
    }
    return;
}