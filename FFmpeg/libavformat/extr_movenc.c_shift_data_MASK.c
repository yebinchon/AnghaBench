#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_10__ {int (* io_open ) (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * pb; int /*<<< orphan*/  url; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int flags; scalar_t__ reserved_header_pos; } ;
typedef  TYPE_1__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_MOV_FLAG_FRAGMENT ; 
 int /*<<< orphan*/  READ_BLOCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    int ret = 0, moov_size;
    MOVMuxContext *mov = s->priv_data;
    int64_t pos, pos_end = FUNC6(s->pb);
    uint8_t *buf, *read_buf[2];
    int read_buf_id = 0;
    int read_size[2];
    AVIOContext *read_pb;

    if (mov->flags & FF_MOV_FLAG_FRAGMENT)
        moov_size = FUNC9(s);
    else
        moov_size = FUNC8(s);
    if (moov_size < 0)
        return moov_size;

    buf = FUNC3(moov_size * 2);
    if (!buf)
        return FUNC0(ENOMEM);
    read_buf[0] = buf;
    read_buf[1] = buf + moov_size;

    /* Shift the data: the AVIO context of the output can only be used for
     * writing, so we re-open the same output, but for reading. It also avoids
     * a read/seek/write/seek back and forth. */
    FUNC4(s->pb);
    ret = s->io_open(s, &read_pb, s->url, AVIO_FLAG_READ, NULL);
    if (ret < 0) {
        FUNC2(s, AV_LOG_ERROR, "Unable to re-open %s output file for "
               "the second pass (faststart)\n", s->url);
        goto end;
    }

    /* mark the end of the shift to up to the last data we wrote, and get ready
     * for writing */
    pos_end = FUNC6(s->pb);
    FUNC5(s->pb, mov->reserved_header_pos + moov_size, SEEK_SET);

    /* start reading at where the new moov will be placed */
    FUNC5(read_pb, mov->reserved_header_pos, SEEK_SET);
    pos = FUNC6(read_pb);

#define READ_BLOCK do {                                                             \
    read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], moov_size);  \
    read_buf_id ^= 1;                                                               \
} while (0)

    /* shift data by chunk of at most moov_size */
    READ_BLOCK;
    do {
        int n;
        READ_BLOCK;
        n = read_size[read_buf_id];
        if (n <= 0)
            break;
        FUNC7(s->pb, read_buf[read_buf_id], n);
        pos += n;
    } while (pos < pos_end);
    FUNC10(s, &read_pb);

end:
    FUNC1(buf);
    return ret;
}