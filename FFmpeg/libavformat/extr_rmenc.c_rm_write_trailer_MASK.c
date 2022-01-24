#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int nb_streams; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int seekable; } ;
struct TYPE_11__ {int data_pos; TYPE_1__* streams; } ;
struct TYPE_10__ {int /*<<< orphan*/  nb_frames; int /*<<< orphan*/  total_frames; } ;
typedef  TYPE_2__ RMMuxContext ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    RMMuxContext *rm = s->priv_data;
    int data_size, index_pos, i;
    AVIOContext *pb = s->pb;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        /* end of file: finish to write header */
        index_pos = FUNC1(pb);
        data_size = index_pos - rm->data_pos;

        /* FIXME: write index */

        /* undocumented end header */
        FUNC2(pb, 0);
        FUNC2(pb, 0);

        FUNC0(pb, 0, SEEK_SET);
        for(i=0;i<s->nb_streams;i++)
            rm->streams[i].total_frames = rm->streams[i].nb_frames;
        FUNC3(s, data_size, 0);
    } else {
        /* undocumented end header */
        FUNC2(pb, 0);
        FUNC2(pb, 0);
    }

    return 0;
}