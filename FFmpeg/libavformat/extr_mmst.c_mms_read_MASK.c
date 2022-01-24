#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_11__ {scalar_t__ asf_header_read_size; scalar_t__ asf_header_size; scalar_t__ remaining_in_len; scalar_t__ asf_packet_len; } ;
struct TYPE_10__ {TYPE_3__ mms; } ;
typedef  TYPE_2__ MMSTContext ;
typedef  TYPE_3__ MMSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SC_PKT_ASF_MEDIA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(URLContext *h, uint8_t *buf, int size)
{
    /* TODO: see tcp.c:tcp_read() about a possible timeout scheme */
    MMSTContext *mmst = h->priv_data;
    MMSContext *mms   = &mmst->mms;
    int result = 0;

    do {
        if(mms->asf_header_read_size < mms->asf_header_size) {
            /* Read from ASF header buffer */
            result = FUNC3(mms, buf, size);
        } else if(mms->remaining_in_len) {
            /* Read remaining packet data to buffer.
             * the result can not be zero because remaining_in_len is positive.*/
            result = FUNC2(mms, buf, size);
        } else {
            /* Read from network */
            int err = FUNC4(mmst, NULL, SC_PKT_ASF_MEDIA);
            if (err == 0) {
                if(mms->remaining_in_len>mms->asf_packet_len) {
                    FUNC1(h, AV_LOG_ERROR,
                           "Incoming pktlen %d is larger than ASF pktsize %d\n",
                           mms->remaining_in_len, mms->asf_packet_len);
                    result= FUNC0(EIO);
                } else {
                    // copy the data to the packet buffer.
                    result = FUNC2(mms, buf, size);
                    if (result == 0) {
                        FUNC1(h, AV_LOG_TRACE, "Read ASF media packet size is zero!\n");
                        break;
                    }
                }
            } else {
                FUNC1(h, AV_LOG_TRACE, "read packet error!\n");
                break;
            }
        }
    } while(!result); // only return one packet.
    return result;
}