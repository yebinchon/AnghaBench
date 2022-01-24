#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {scalar_t__ buffer_ptr; scalar_t__ buffer; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ OSSAudioData ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (scalar_t__,int) ; 
 scalar_t__ OSS_AUDIO_BLOCK_SIZE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s1, AVPacket *pkt)
{
    OSSAudioData *s = s1->priv_data;
    int len, ret;
    int size= pkt->size;
    uint8_t *buf= pkt->data;

    while (size > 0) {
        len = FUNC1(OSS_AUDIO_BLOCK_SIZE - s->buffer_ptr, size);
        FUNC2(s->buffer + s->buffer_ptr, buf, len);
        s->buffer_ptr += len;
        if (s->buffer_ptr >= OSS_AUDIO_BLOCK_SIZE) {
            for(;;) {
                ret = FUNC3(s->fd, s->buffer, OSS_AUDIO_BLOCK_SIZE);
                if (ret > 0)
                    break;
                if (ret < 0 && (errno != EAGAIN && errno != EINTR))
                    return FUNC0(EIO);
            }
            s->buffer_ptr = 0;
        }
        buf += len;
        size -= len;
    }
    return 0;
}