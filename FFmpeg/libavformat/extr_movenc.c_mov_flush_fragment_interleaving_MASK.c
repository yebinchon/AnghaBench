#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  mdat_buf; } ;
struct TYPE_8__ {int entries_flushed; int entry; TYPE_1__* cluster; int /*<<< orphan*/ * mdat_buf; } ;
struct TYPE_7__ {int pos; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  TYPE_3__ MOVMuxContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, MOVTrack *track)
{
    MOVMuxContext *mov = s->priv_data;
    int ret, buf_size;
    uint8_t *buf;
    int i, offset;

    if (!track->mdat_buf)
        return 0;
    if (!mov->mdat_buf) {
        if ((ret = FUNC2(&mov->mdat_buf)) < 0)
            return ret;
    }
    buf_size = FUNC1(track->mdat_buf, &buf);
    track->mdat_buf = NULL;

    offset = FUNC3(mov->mdat_buf);
    FUNC4(mov->mdat_buf, buf, buf_size);
    FUNC0(buf);

    for (i = track->entries_flushed; i < track->entry; i++)
        track->cluster[i].pos += offset;
    track->entries_flushed = track->entry;
    return 0;
}