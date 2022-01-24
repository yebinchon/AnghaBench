#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/ * ff_asf_guid ;
struct TYPE_11__ {int* stream_bitrates; TYPE_1__* streams; } ;
struct TYPE_10__ {int size; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_8__ {unsigned int stream_language_index; scalar_t__ payload_ext_ct; TYPE_3__* payload; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFPayload ;
typedef  TYPE_4__ ASFContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, int64_t size)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    ff_asf_guid g;
    int ext_len, payload_ext_ct, stream_ct, i;
    uint32_t leak_rate, stream_num;
    unsigned int stream_languageid_index;

    FUNC4(pb); // starttime
    FUNC4(pb); // endtime
    leak_rate = FUNC3(pb); // leak-datarate
    FUNC3(pb); // bucket-datasize
    FUNC3(pb); // init-bucket-fullness
    FUNC3(pb); // alt-leak-datarate
    FUNC3(pb); // alt-bucket-datasize
    FUNC3(pb); // alt-init-bucket-fullness
    FUNC3(pb); // max-object-size
    FUNC3(pb); // flags (reliable,seekable,no_cleanpoints?,resend-live-cleanpoints, rest of bits reserved)
    stream_num = FUNC2(pb); // stream-num

    stream_languageid_index = FUNC2(pb); // stream-language-id-index
    if (stream_num < 128)
        asf->streams[stream_num].stream_language_index = stream_languageid_index;

    FUNC4(pb); // avg frametime in 100ns units
    stream_ct      = FUNC2(pb); // stream-name-count
    payload_ext_ct = FUNC2(pb); // payload-extension-system-count

    if (stream_num < 128) {
        asf->stream_bitrates[stream_num] = leak_rate;
        asf->streams[stream_num].payload_ext_ct = 0;
    }

    for (i = 0; i < stream_ct; i++) {
        FUNC2(pb);
        ext_len = FUNC2(pb);
        FUNC5(pb, ext_len);
    }

    for (i = 0; i < payload_ext_ct; i++) {
        int size;
        FUNC6(pb, &g);
        size = FUNC2(pb);
        ext_len = FUNC3(pb);
        FUNC5(pb, ext_len);
        if (stream_num < 128 && i < FUNC0(asf->streams[stream_num].payload)) {
            ASFPayload *p = &asf->streams[stream_num].payload[i];
            p->type = g[0];
            p->size = size;
            FUNC1(s, AV_LOG_DEBUG, "Payload extension %x %d\n", g[0], p->size );
            asf->streams[stream_num].payload_ext_ct ++;
        }
    }

    return 0;
}