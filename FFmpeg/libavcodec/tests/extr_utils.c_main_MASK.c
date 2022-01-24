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
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  sample_fmts; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC3(void){
    AVCodec *codec = NULL;
    int ret = 0;

    while ((codec = FUNC1(codec))) {
        if (FUNC0(codec)) {
            if (codec->type == AVMEDIA_TYPE_AUDIO) {
                if (!codec->sample_fmts) {
                    FUNC2(NULL, AV_LOG_FATAL, "Encoder %s is missing the sample_fmts field\n", codec->name);
                    ret = 1;
                }
            }
        }
    }
    return ret;
}