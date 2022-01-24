#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nb_index; scalar_t__ last_chunk_pos; scalar_t__ first_index_pos; TYPE_2__* index; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_8__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  pos; int /*<<< orphan*/  guid; } ;
typedef  TYPE_2__ WtvChunkEntry ;
struct TYPE_9__ {TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_index_guid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    int i;

    FUNC4(s, &ff_index_guid, 0x80000000);
    FUNC0(pb, 0);
    FUNC0(pb, 0);

    for (i = 0; i < wctx->nb_index; i++) {
        WtvChunkEntry *t = wctx->index + i;
        FUNC2(pb,  t->guid);
        FUNC1(pb, t->pos);
        FUNC0(pb, t->stream_id);
        FUNC0(pb, 0); // checksum?
        FUNC1(pb, t->serial);
    }
    wctx->nb_index = 0;   // reset index
    FUNC3(s);

    if (!wctx->first_index_pos)
        wctx->first_index_pos = wctx->last_chunk_pos;
}