#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_16__ {int seekable; } ;
struct TYPE_13__ {scalar_t__ buf_ptr; scalar_t__ buffer; } ;
struct TYPE_15__ {int /*<<< orphan*/  index_ptr; scalar_t__ data_offset; scalar_t__ is_streamed; scalar_t__ next_start_sec; int /*<<< orphan*/  maximum_packet; scalar_t__ end_sec; TYPE_1__ pb; } ;
struct TYPE_14__ {TYPE_7__* pb; TYPE_3__* priv_data; } ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    int64_t file_size, data_size;
    int ret;

    /* flush the current packet */
    if (asf->pb.buf_ptr > asf->pb.buffer)
        FUNC6(s);

    /* write index */
    data_size = FUNC5(s->pb);
    if (!asf->is_streamed && asf->next_start_sec) {
        if ((ret = FUNC8(s, asf->end_sec + 1, 0, 0, 0)) < 0)
            return ret;
        FUNC1(s, asf->index_ptr, asf->maximum_packet, asf->next_start_sec);
    }
    FUNC3(s->pb);

    if (asf->is_streamed || !(s->pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        FUNC7(s, 0x4524, 0, 0); /* end of stream */
    } else {
        /* rewrite an updated header */
        file_size = FUNC5(s->pb);
        FUNC4(s->pb, 0, SEEK_SET);
        FUNC0(s, file_size, data_size - asf->data_offset);
    }

    FUNC2(&asf->index_ptr);
    return 0;
}