#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_6__ {int (* io_open ) (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * pb; int /*<<< orphan*/  url; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  READ_BLOCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *format_context, int64_t shift_size)
{
    int ret = 0;
    int64_t pos, pos_end = FUNC6(format_context->pb);
    uint8_t *buf, *read_buf[2];
    int read_buf_id = 0;
    int read_size[2];
    AVIOContext *read_pb;

    buf = FUNC3(shift_size * 2);
    if (!buf)
        return FUNC0(ENOMEM);
    read_buf[0] = buf;
    read_buf[1] = buf + shift_size;

    /* Write the header at the beginning of the file, shifting all content as necessary;
     * based on the approach used by MOV faststart. */
    FUNC4(format_context->pb);
    ret = format_context->io_open(format_context, &read_pb, format_context->url, AVIO_FLAG_READ, NULL);
    if (ret < 0) {
        FUNC2(format_context, AV_LOG_ERROR, "Unable to re-open %s output file to "
               "write the header\n", format_context->url);
        FUNC1(buf);
        return ret;
    }

    /* mark the end of the shift to up to the last data we wrote, and get ready
     * for writing */
    pos_end = FUNC6(format_context->pb);
    FUNC5(format_context->pb, shift_size, SEEK_SET);

    /* start reading at where the new header will be placed */
    FUNC5(read_pb, 0, SEEK_SET);
    pos = FUNC6(read_pb);

#define READ_BLOCK do {                                                             \
    read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], shift_size);  \
    read_buf_id ^= 1;                                                               \
} while (0)

    /* shift data by chunk of at most shift_size */
    READ_BLOCK;
    do {
        int n;
        READ_BLOCK;
        n = read_size[read_buf_id];
        if (n <= 0)
            break;
        FUNC7(format_context->pb, read_buf[read_buf_id], n);
        pos += n;
    } while (pos < pos_end);
    FUNC8(format_context, &read_pb);

    FUNC1(buf);
    return 0;
}