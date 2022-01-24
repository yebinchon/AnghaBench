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
struct TYPE_7__ {int nb_index_memory_alloc; int packet_timestamp_start; int packet_timestamp_end; int /*<<< orphan*/  packet_buf; int /*<<< orphan*/  pb; scalar_t__ packet_nb_payloads; int /*<<< orphan*/  index_ptr; scalar_t__ maximum_packet; scalar_t__ nb_packets; int /*<<< orphan*/  packet_size; } ;
struct TYPE_6__ {int nb_streams; int avoid_negative_ts; int /*<<< orphan*/  packet_size; int /*<<< orphan*/  pb; scalar_t__ max_interleave_delta; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ AVFormatContext ;
typedef  int /*<<< orphan*/  ASFIndex ;
typedef  TYPE_2__ ASFContext ;

/* Variables and functions */
 int ASF_INDEX_BLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  DATA_HEADER_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;

    s->packet_size  = asf->packet_size;
    s->max_interleave_delta = 0;
    asf->nb_packets = 0;

    if (s->nb_streams > 127) {
        FUNC3(s, AV_LOG_ERROR, "ASF can only handle 127 streams\n");
        return FUNC0(EINVAL);
    }

    asf->index_ptr             = FUNC4(sizeof(ASFIndex) * ASF_INDEX_BLOCK);
    if (!asf->index_ptr)
        return FUNC0(ENOMEM);
    asf->nb_index_memory_alloc = ASF_INDEX_BLOCK;
    asf->maximum_packet        = 0;

    /* the data-chunk-size has to be 50 (DATA_HEADER_SIZE), which is
     * data_size - asf->data_offset at the moment this function is done.
     * It is needed to use asf as a streamable format. */
    if (FUNC1(s, 0, DATA_HEADER_SIZE) < 0) {
        //av_free(asf);
        FUNC2(&asf->index_ptr);
        return -1;
    }

    FUNC5(s->pb);

    asf->packet_nb_payloads     = 0;
    asf->packet_timestamp_start = -1;
    asf->packet_timestamp_end   = -1;
    FUNC6(&asf->pb, asf->packet_buf, s->packet_size, 1,
                      NULL, NULL, NULL, NULL);

    if (s->avoid_negative_ts < 0)
        s->avoid_negative_ts = 1;

    return 0;
}