#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  last_chunk_pos; int /*<<< orphan*/  serial; int /*<<< orphan*/  nb_sp_pairs; int /*<<< orphan*/  sp_pairs; int /*<<< orphan*/  last_timestamp_pos; int /*<<< orphan*/  first_index_pos; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_7__ {TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_sync_guid ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    WtvContext *wctx = s->priv_data;
    int64_t last_chunk_pos = wctx->last_chunk_pos;

    FUNC3(s, &ff_sync_guid, 0x18, 0);
    FUNC1(pb, wctx->first_index_pos);
    FUNC1(pb, wctx->last_timestamp_pos);
    FUNC1(pb, 0);

    FUNC2(s);
    FUNC0(&wctx->sp_pairs, &wctx->nb_sp_pairs, wctx->serial, wctx->last_chunk_pos);

    wctx->last_chunk_pos = last_chunk_pos;
}