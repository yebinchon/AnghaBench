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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  ff_asf_guid ;
struct TYPE_5__ {int /*<<< orphan*/  last_chunk_pos; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s, const ff_asf_guid *guid, int stream_id)
{
    WtvContext *wctx = s->priv_data;
    AVIOContext *pb = s->pb;

    int64_t last_chunk_pos = wctx->last_chunk_pos;
    FUNC1(s, guid, 0, stream_id); // length updated later
    FUNC0(pb, last_chunk_pos);
}