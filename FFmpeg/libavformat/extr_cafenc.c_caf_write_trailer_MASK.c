#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_18__ {int /*<<< orphan*/  block_align; int /*<<< orphan*/  channels; int /*<<< orphan*/  codec_id; } ;
struct TYPE_17__ {TYPE_1__** streams; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int seekable; } ;
struct TYPE_15__ {int data; int size_entries_used; int packets; int /*<<< orphan*/  pkt_sizes; scalar_t__ size_buffer_size; } ;
struct TYPE_14__ {TYPE_5__* codecpar; } ;
typedef  TYPE_2__ CAFContext ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    CAFContext *caf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;

    if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t file_size = FUNC3(pb);

        FUNC2(pb, caf->data, SEEK_SET);
        FUNC5(pb, file_size - caf->data - 8);
        FUNC2(pb, file_size, SEEK_SET);
        if (!par->block_align) {
            FUNC7(pb, "pakt");
            FUNC5(pb, caf->size_entries_used + 24);
            FUNC5(pb, caf->packets); ///< mNumberPackets
            FUNC5(pb, caf->packets * FUNC8(par->codec_id, par->channels, par->block_align)); ///< mNumberValidFrames
            FUNC4(pb, 0); ///< mPrimingFrames
            FUNC4(pb, 0); ///< mRemainderFrames
            FUNC6(pb, caf->pkt_sizes, caf->size_entries_used);
            caf->size_buffer_size = 0;
        }
        FUNC1(pb);
    }
    FUNC0(&caf->pkt_sizes);
    return 0;
}