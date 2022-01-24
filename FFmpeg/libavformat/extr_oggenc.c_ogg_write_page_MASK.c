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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pb; TYPE_1__** streams; } ;
struct TYPE_10__ {size_t stream_index; int flags; int segments_count; int size; int /*<<< orphan*/ * data; int /*<<< orphan*/ * segments; int /*<<< orphan*/  granule; } ;
struct TYPE_9__ {int /*<<< orphan*/  page_count; int /*<<< orphan*/  page_counter; int /*<<< orphan*/  serial_num; } ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
typedef  TYPE_2__ OGGStreamContext ;
typedef  TYPE_3__ OGGPage ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_crc04C11DB7_update ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s, OGGPage *page, int extra_flags)
{
    OGGStreamContext *oggstream = s->streams[page->stream_index]->priv_data;
    AVIOContext *pb;
    int64_t crc_offset;
    int ret, size;
    uint8_t *buf;

    ret = FUNC3(&pb);
    if (ret < 0)
        return ret;
    FUNC9(pb, ff_crc04C11DB7_update, 0);
    FUNC10(pb, "OggS");
    FUNC5(pb, 0);
    FUNC5(pb, page->flags | extra_flags);
    FUNC7(pb, page->granule);
    FUNC6(pb, oggstream->serial_num);
    FUNC6(pb, oggstream->page_counter++);
    crc_offset = FUNC4(pb);
    FUNC6(pb, 0); // crc
    FUNC5(pb, page->segments_count);
    FUNC8(pb, page->segments, page->segments_count);
    FUNC8(pb, page->data, page->size);

    FUNC11(s, pb, crc_offset);
    FUNC2(pb);

    size = FUNC1(pb, &buf);
    if (size < 0)
        return size;

    FUNC8(s->pb, buf, size);
    FUNC2(s->pb);
    FUNC0(buf);
    oggstream->page_count--;
    return 0;
}