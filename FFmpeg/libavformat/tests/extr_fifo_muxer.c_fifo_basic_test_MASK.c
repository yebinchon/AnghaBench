#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FailingMuxerPacketData ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(AVFormatContext *oc, AVDictionary **opts,
                             const FailingMuxerPacketData *pkt_data)
{
    int ret = 0, i;
    AVPacket pkt;

    FUNC1(&pkt);


    ret = FUNC5(oc, opts);
    if (ret) {
        FUNC6(stderr, "Unexpected write_header failure: %s\n",
                FUNC0(ret));
        goto fail;
    }

    for (i = 0; i < 15; i++ ) {
        ret = FUNC7(&pkt, pkt_data, i);
        if (ret < 0) {
            FUNC6(stderr, "Failed to prepare test packet: %s\n",
                    FUNC0(ret));
            goto write_trailer_and_fail;
        }
        ret = FUNC3(oc, &pkt);
        FUNC2(&pkt);
        if (ret < 0) {
            FUNC6(stderr, "Unexpected write_frame error: %s\n",
                    FUNC0(ret));
            goto write_trailer_and_fail;
        }
    }

    ret = FUNC3(oc, NULL);
    if (ret < 0) {
        FUNC6(stderr, "Unexpected write_frame error during flushing: %s\n",
                FUNC0(ret));
        goto write_trailer_and_fail;
    }

    ret = FUNC4(oc);
    if (ret < 0) {
        FUNC6(stderr, "Unexpected write_trailer error during flushing: %s\n",
                FUNC0(ret));
        goto fail;
    }

    return ret;
write_trailer_and_fail:
    FUNC4(oc);
fail:
    return ret;
}