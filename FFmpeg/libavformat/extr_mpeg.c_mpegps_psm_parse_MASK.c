#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_3__ {unsigned char* psm_es_type; } ;
typedef  TYPE_1__ MpegDemuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static long FUNC4(MpegDemuxContext *m, AVIOContext *pb)
{
    int psm_length, ps_info_length, es_map_length;

    psm_length = FUNC1(pb);
    FUNC0(pb);
    FUNC0(pb);
    ps_info_length = FUNC1(pb);

    /* skip program_stream_info */
    FUNC3(pb, ps_info_length);
    /*es_map_length = */FUNC1(pb);
    /* Ignore es_map_length, trust psm_length */
    es_map_length = psm_length - ps_info_length - 10;

    /* at least one es available? */
    while (es_map_length >= 4) {
        unsigned char type      = FUNC0(pb);
        unsigned char es_id     = FUNC0(pb);
        uint16_t es_info_length = FUNC1(pb);

        /* remember mapping from stream id to stream type */
        m->psm_es_type[es_id] = type;
        /* skip program_stream_info */
        FUNC3(pb, es_info_length);
        es_map_length -= 4 + es_info_length;
    }
    FUNC2(pb); /* crc32 */
    return 2 + psm_length;
}