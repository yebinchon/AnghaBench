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
struct TYPE_5__ {int nb_streams; int /*<<< orphan*/ ** streams; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int MP4DecConfigDescrTag ; 
 int MP4ESDescrTag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 

int FUNC5(AVFormatContext *fc, AVIOContext *pb)
{
    AVStream *st;
    int tag, ret = 0;

    if (fc->nb_streams < 1)
        return 0;
    st = fc->streams[fc->nb_streams-1];

    FUNC1(pb); /* version + flags */
    FUNC4(fc, pb, &tag);
    if (tag == MP4ESDescrTag) {
        FUNC2(pb, NULL);
    } else
        FUNC0(pb); /* ID */

    FUNC4(fc, pb, &tag);
    if (tag == MP4DecConfigDescrTag)
        ret = FUNC3(fc, st, pb);

    return ret;
}