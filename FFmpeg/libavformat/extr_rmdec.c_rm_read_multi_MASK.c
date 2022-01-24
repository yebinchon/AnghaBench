#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pb; } ;
struct TYPE_12__ {int /*<<< orphan*/  priv_data; TYPE_1__* codecpar; int /*<<< orphan*/  duration; int /*<<< orphan*/  start_time; scalar_t__ id; } ;
struct TYPE_11__ {int /*<<< orphan*/  codec_type; int /*<<< orphan*/  bit_rate; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_DATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVIOContext *pb,
                         AVStream *st, char *mime)
{
    int number_of_streams = FUNC2(pb);
    int number_of_mdpr;
    int i, ret;
    unsigned size2;
    for (i = 0; i<number_of_streams; i++)
        FUNC2(pb);
    number_of_mdpr = FUNC2(pb);
    if (number_of_mdpr != 1) {
        FUNC4(s, "MLTI with multiple (%d) MDPR", number_of_mdpr);
    }
    for (i = 0; i < number_of_mdpr; i++) {
        AVStream *st2;
        if (i > 0) {
            st2 = FUNC1(s, NULL);
            if (!st2) {
                ret = FUNC0(ENOMEM);
                return ret;
            }
            st2->id = st->id + (i<<16);
            st2->codecpar->bit_rate = st->codecpar->bit_rate;
            st2->start_time = st->start_time;
            st2->duration   = st->duration;
            st2->codecpar->codec_type = AVMEDIA_TYPE_DATA;
            st2->priv_data = FUNC5();
            if (!st2->priv_data)
                return FUNC0(ENOMEM);
        } else
            st2 = st;

        size2 = FUNC3(pb);
        ret = FUNC6(s, s->pb, st2, st2->priv_data,
                                        size2, NULL);
        if (ret < 0)
            return ret;
    }
    return 0;
}