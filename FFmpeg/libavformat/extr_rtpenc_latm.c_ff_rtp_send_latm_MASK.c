#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_10__ {TYPE_2__** streams; TYPE_3__* priv_data; } ;
struct TYPE_9__ {int* buf; scalar_t__ max_payload_size; int /*<<< orphan*/  cur_timestamp; int /*<<< orphan*/  timestamp; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ extradata_size; } ;
typedef  TYPE_3__ RTPMuxContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

void FUNC4(AVFormatContext *s1, const uint8_t *buff, int size)
{
    /* MP4A-LATM
     * The RTP payload format specification is described in RFC 3016
     * The encoding specifications are provided in ISO/IEC 14496-3 */

    RTPMuxContext *s = s1->priv_data;
    int header_size;
    int offset = 0;
    int len    = 0;

    /* skip ADTS header, if present */
    if ((s1->streams[0]->codecpar->extradata_size) == 0) {
        size -= 7;
        buff += 7;
    }

    /* PayloadLengthInfo() */
    header_size = size/0xFF + 1;
    FUNC3(s->buf, 0xFF, header_size - 1);
    s->buf[header_size - 1] = size % 0xFF;

    s->timestamp = s->cur_timestamp;

    /* PayloadMux() */
    while (size > 0) {
        len   = FUNC0(size, s->max_payload_size - (!offset ? header_size : 0));
        size -= len;
        if (!offset) {
            FUNC2(s->buf + header_size, buff, len);
            FUNC1(s1, s->buf, header_size + len, !size);
        } else {
            FUNC1(s1, buff + offset, len, !size);
        }
        offset += len;
    }
}