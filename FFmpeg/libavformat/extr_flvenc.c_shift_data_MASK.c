#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_8__ {int (* io_open ) (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * pb; int /*<<< orphan*/  url; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int filepositions_count; int keyframe_index_size; int metadata_size_pos; int metadata_totalsize_pos; int keyframes_info_offset; scalar_t__ metadata_totalsize; } ;
typedef  TYPE_1__ FLVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  READ_BLOCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    int ret = 0;
    int n = 0;
    int64_t metadata_size = 0;
    FLVContext *flv = s->priv_data;
    int64_t pos, pos_end = FUNC6(s->pb);
    uint8_t *buf, *read_buf[2];
    int read_buf_id = 0;
    int read_size[2];
    AVIOContext *read_pb;

    metadata_size = flv->filepositions_count * 9 * 2 + 10; /* filepositions and times value */
    metadata_size += 2 + 13; /* filepositions String */
    metadata_size += 2 + 5; /* times String */
    metadata_size += 3; /* Object end */

    flv->keyframe_index_size = metadata_size;

    if (metadata_size < 0)
        return metadata_size;

    buf = FUNC3(metadata_size, 2);
    if (!buf) {
        return FUNC0(ENOMEM);
    }
    read_buf[0] = buf;
    read_buf[1] = buf + metadata_size;

    FUNC5(s->pb, flv->metadata_size_pos, SEEK_SET);
    FUNC7(s->pb, flv->metadata_totalsize + metadata_size);

    FUNC5(s->pb, flv->metadata_totalsize_pos, SEEK_SET);
    FUNC8(s->pb, flv->metadata_totalsize + 11 + metadata_size);
    FUNC5(s->pb, pos_end, SEEK_SET);

    /* Shift the data: the AVIO context of the output can only be used for
     * writing, so we re-open the same output, but for reading. It also avoids
     * a read/seek/write/seek back and forth. */
    FUNC4(s->pb);
    ret = s->io_open(s, &read_pb, s->url, AVIO_FLAG_READ, NULL);
    if (ret < 0) {
        FUNC2(s, AV_LOG_ERROR, "Unable to re-open %s output file for "
               "the second pass (add_keyframe_index)\n", s->url);
        goto end;
    }

    /* mark the end of the shift to up to the last data we wrote, and get ready
     * for writing */
    pos_end = FUNC6(s->pb);
    FUNC5(s->pb, flv->keyframes_info_offset + metadata_size, SEEK_SET);

    /* start reading at where the keyframe index information will be placed */
    FUNC5(read_pb, flv->keyframes_info_offset, SEEK_SET);
    pos = FUNC6(read_pb);

#define READ_BLOCK do {                                                             \
    read_size[read_buf_id] = avio_read(read_pb, read_buf[read_buf_id], metadata_size);  \
    read_buf_id ^= 1;                                                               \
} while (0)

    /* shift data by chunk of at most keyframe *filepositions* and *times* size */
    READ_BLOCK;
    do {
        READ_BLOCK;
        n = read_size[read_buf_id];
        if (n < 0)
            break;
        FUNC9(s->pb, read_buf[read_buf_id], n);
        pos += n;
    } while (pos <= pos_end);

    FUNC10(s, &read_pb);

end:
    FUNC1(buf);
    return ret;
}