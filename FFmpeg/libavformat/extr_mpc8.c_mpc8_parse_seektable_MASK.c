#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_6__ {scalar_t__ nb_streams; int /*<<< orphan*/ * streams; int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int samples; int header_pos; } ;
typedef  TYPE_1__ MPCContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int INT_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TAG_SEEKTABLE ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void FUNC12(AVFormatContext *s, int64_t off)
{
    MPCContext *c = s->priv_data;
    int tag;
    int64_t size, pos, ppos[2];
    uint8_t *buf;
    int i, t, seekd, ret;
    GetBitContext gb;

    if (s->nb_streams == 0) {
        FUNC2(s, AV_LOG_ERROR, "No stream added before parsing seek table\n");
        return;
    }

    FUNC5(s->pb, off, SEEK_SET);
    FUNC11(s->pb, &tag, &size);
    if(tag != TAG_SEEKTABLE){
        FUNC2(s, AV_LOG_ERROR, "No seek table at given position\n");
        return;
    }
    if (size > INT_MAX/10 || size<=0) {
        FUNC2(s, AV_LOG_ERROR, "Bad seek table size\n");
        return;
    }
    if(!(buf = FUNC3(size + AV_INPUT_BUFFER_PADDING_SIZE)))
        return;
    ret = FUNC4(s->pb, buf, size);
    if (ret != size) {
        FUNC2(s, AV_LOG_ERROR, "seek table truncated\n");
        FUNC1(buf);
        return;
    }
    FUNC10(buf+size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    FUNC9(&gb, buf, size * 8);
    size = FUNC6(&gb);
    if(size > UINT_MAX/4 || size > c->samples/1152){
        FUNC2(s, AV_LOG_ERROR, "Seek table is too big\n");
        FUNC1(buf);
        return;
    }
    seekd = FUNC7(&gb, 4);
    for(i = 0; i < 2; i++){
        pos = FUNC6(&gb) + c->header_pos;
        ppos[1 - i] = pos;
        FUNC0(s->streams[0], pos, i, 0, 0, AVINDEX_KEYFRAME);
    }
    for(; i < size; i++){
        t = FUNC8(&gb, 1, 33) << 12;
        t += FUNC7(&gb, 12);
        if(t & 1)
            t = -(t & ~1);
        pos = (t >> 1) + ppos[0]*2 - ppos[1];
        FUNC0(s->streams[0], pos, i << seekd, 0, 0, AVINDEX_KEYFRAME);
        ppos[1] = ppos[0];
        ppos[0] = pos;
    }
    FUNC1(buf);
}