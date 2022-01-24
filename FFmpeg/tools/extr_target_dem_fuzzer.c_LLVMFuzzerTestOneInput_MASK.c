#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int int64_t ;
struct TYPE_15__ {TYPE_2__* pb; } ;
struct TYPE_14__ {struct TYPE_14__* buffer; } ;
struct TYPE_13__ {int filesize; size_t fuzz_size; int /*<<< orphan*/  const* fuzz; scalar_t__ pos; } ;
typedef  TYPE_1__ IOContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_PANIC ; 
 int /*<<< orphan*/  FUZZ_TAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int FUNC12 (TYPE_3__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  io_read ; 
 int /*<<< orphan*/ * io_seek ; 
 scalar_t__ maxiteration ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/  const*,int) ; 

int FUNC20(const uint8_t *data, size_t size) {
    const uint64_t fuzz_tag = FUZZ_TAG;
    uint32_t it = 0;
    AVFormatContext *avfmt = FUNC8();
    AVPacket pkt;
    char filename[1025] = {0};
    AVIOContext *fuzzed_pb = NULL;
    uint8_t *io_buffer;
    int io_buffer_size = 32768;
    int64_t filesize   = size;
    IOContext opaque;
    static int c;
    int seekable = 0;
    int ret;

    if (!c) {
        FUNC6();
        FUNC7();
        FUNC2(AV_LOG_PANIC);
        c=1;
    }

    if (!avfmt)
        FUNC18("Failed avformat_alloc_context()");

    if (size > 2048) {
        GetByteContext gbc;
        FUNC19 (filename, data + size - 1024, 1024);
        FUNC17(&gbc, data + size - 2048, 1024);
        size -= 2048;

        io_buffer_size = FUNC15(&gbc) & 0xFFFFFFF;
        seekable       = FUNC14(&gbc) & 1;
        filesize       = FUNC16(&gbc) & 0x7FFFFFFFFFFFFFFF;
    }
    io_buffer = FUNC3(io_buffer_size);
    if (!io_buffer)
        FUNC18("Failed to allocate io_buffer");

    opaque.filesize = filesize;
    opaque.pos      = 0;
    opaque.fuzz     = data;
    opaque.fuzz_size= size;
    fuzzed_pb = FUNC13(io_buffer, io_buffer_size, 0, &opaque,
                                   io_read, NULL, seekable ? io_seek : NULL);
    if (!fuzzed_pb)
        FUNC18("avio_alloc_context failed");

    avfmt->pb = fuzzed_pb;

    ret = FUNC12(&avfmt, filename, NULL, NULL);
    if (ret < 0) {
        FUNC0(&fuzzed_pb->buffer);
        FUNC0(&fuzzed_pb);
        FUNC11(avfmt);
        return 0;
    }

    ret = FUNC10(avfmt, NULL);

    FUNC1(&pkt);

    //TODO, test seeking

    for(it = 0; it < maxiteration; it++) {
        ret = FUNC5(avfmt, &pkt);
        if (ret < 0)
            break;
        FUNC4(&pkt);
    }
end:
    FUNC0(&fuzzed_pb->buffer);
    FUNC0(&fuzzed_pb);
    FUNC9(&avfmt);

    return 0;
}