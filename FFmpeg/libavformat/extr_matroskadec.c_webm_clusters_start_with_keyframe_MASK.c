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
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_20__ {int /*<<< orphan*/  pb; TYPE_13__** streams; TYPE_4__* priv_data; } ;
struct TYPE_19__ {int flags; } ;
struct TYPE_18__ {TYPE_3__* queue; TYPE_2__* ctx; int /*<<< orphan*/  current_id; } ;
struct TYPE_17__ {TYPE_5__ pkt; } ;
struct TYPE_16__ {int /*<<< orphan*/  pb; } ;
struct TYPE_15__ {int /*<<< orphan*/  pos; } ;
struct TYPE_14__ {scalar_t__ nb_index_entries; TYPE_1__* index_entries; } ;
typedef  TYPE_4__ MatroskaDemuxContext ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    MatroskaDemuxContext *matroska = s->priv_data;
    uint32_t id = matroska->current_id;
    int64_t cluster_pos, before_pos;
    int index, rv = 1;
    if (s->streams[0]->nb_index_entries <= 0) return 0;
    // seek to the first cluster using cues.
    index = FUNC0(s->streams[0], 0, 0);
    if (index < 0)  return 0;
    cluster_pos = s->streams[0]->index_entries[index].pos;
    before_pos = FUNC2(s->pb);
    while (1) {
        uint64_t cluster_id, cluster_length;
        int read;
        AVPacket *pkt;
        FUNC1(s->pb, cluster_pos, SEEK_SET);
        // read cluster id and length
        read = FUNC4(matroska, matroska->ctx->pb, 4, &cluster_id, 1);
        if (read < 0 || cluster_id != 0xF43B675) // done with all clusters
            break;
        read = FUNC3(matroska, matroska->ctx->pb, &cluster_length);
        if (read < 0)
            break;

        FUNC7(matroska, 0, cluster_pos);
        FUNC5(matroska);
        if (FUNC6(matroska) < 0 ||
            !matroska->queue) {
            break;
        }
        pkt = &matroska->queue->pkt;
        // 4 + read is the length of the cluster id and the cluster length field.
        cluster_pos += 4 + read + cluster_length;
        if (!(pkt->flags & AV_PKT_FLAG_KEY)) {
            rv = 0;
            break;
        }
    }

    /* Restore the status after matroska_read_header: */
    FUNC7(matroska, id, before_pos);

    return rv;
}