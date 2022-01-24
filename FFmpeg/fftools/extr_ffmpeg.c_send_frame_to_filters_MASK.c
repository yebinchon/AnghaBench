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
struct TYPE_3__ {int nb_filters; int /*<<< orphan*/ * filters; int /*<<< orphan*/ * filter_frame; } ;
typedef  TYPE_1__ InputStream ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(InputStream *ist, AVFrame *decoded_frame)
{
    int i, ret;
    AVFrame *f;

    FUNC0(ist->nb_filters > 0); /* ensure ret is initialized */
    for (i = 0; i < ist->nb_filters; i++) {
        if (i < ist->nb_filters - 1) {
            f = ist->filter_frame;
            ret = FUNC2(f, decoded_frame);
            if (ret < 0)
                break;
        } else
            f = decoded_frame;
        ret = FUNC4(ist->filters[i], f);
        if (ret == AVERROR_EOF)
            ret = 0; /* ignore */
        if (ret < 0) {
            FUNC3(NULL, AV_LOG_ERROR,
                   "Failed to inject frame into filter network: %s\n", FUNC1(ret));
            break;
        }
    }
    return ret;
}