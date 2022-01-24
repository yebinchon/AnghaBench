#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_4__ {int last_chunk_pos; int timeline_start_pos; int /*<<< orphan*/  serial; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_5__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;

    // update the chunk_len field and pad.
    int64_t chunk_len = FUNC2(pb) - (wctx->last_chunk_pos + wctx->timeline_start_pos);
    FUNC1(pb, -(chunk_len - 16), SEEK_CUR);
    FUNC3(pb, chunk_len);
    FUNC1(pb, chunk_len - (16 + 4), SEEK_CUR);

    FUNC4(pb, FUNC0(chunk_len) - chunk_len);
    wctx->serial++;
}