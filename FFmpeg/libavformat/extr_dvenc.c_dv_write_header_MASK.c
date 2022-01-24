#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  value; } ;
struct TYPE_19__ {int nb_streams; TYPE_2__** streams; int /*<<< orphan*/  metadata; TYPE_3__* priv_data; } ;
struct TYPE_18__ {int den; int /*<<< orphan*/  num; } ;
struct TYPE_17__ {int /*<<< orphan*/  tc; TYPE_1__* sys; } ;
struct TYPE_16__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_15__ {int /*<<< orphan*/  ltc_divisor; } ;
typedef  TYPE_3__ DVMuxContext ;
typedef  TYPE_4__ AVRational ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    AVRational rate;
    DVMuxContext *dvc = s->priv_data;
    AVDictionaryEntry *tcr = FUNC0(s->metadata, "timecode", NULL, 0);

    if (!FUNC4(s)) {
        FUNC1(s, AV_LOG_ERROR, "Can't initialize DV format!\n"
                    "Make sure that you supply exactly two streams:\n"
                    "     video: 25fps or 29.97fps, audio: 2ch/48|44|32kHz/PCM\n"
                    "     (50Mbps allows an optional second audio stream)\n");
        return -1;
    }
    rate.num = dvc->sys->ltc_divisor;
    rate.den = 1;
    if (!tcr) { // no global timecode, look into the streams
        int i;
        for (i = 0; i < s->nb_streams; i++) {
            tcr = FUNC0(s->streams[i]->metadata, "timecode", NULL, 0);
            if (tcr)
                break;
        }
    }
    if (tcr && FUNC3(&dvc->tc, rate, tcr->value, s) >= 0)
        return 0;
    return FUNC2(&dvc->tc, rate, 0, 0, s);
}