#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct buffer_data {size_t size; int /*<<< orphan*/ * ptr; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {TYPE_1__* pb; } ;
struct TYPE_10__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct buffer_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  read_packet ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(int argc, char *argv[])
{
    AVFormatContext *fmt_ctx = NULL;
    AVIOContext *avio_ctx = NULL;
    uint8_t *buffer = NULL, *avio_ctx_buffer = NULL;
    size_t buffer_size, avio_ctx_buffer_size = 4096;
    char *input_filename = NULL;
    int ret = 0;
    struct buffer_data bd = { 0 };

    if (argc != 2) {
        FUNC13(stderr, "usage: %s input_file\n"
                "API example program to show how to read from a custom buffer "
                "accessed through AVIOContext.\n", argv[0]);
        return 1;
    }
    input_filename = argv[1];

    /* slurp file content into buffer */
    ret = FUNC3(input_filename, &buffer, &buffer_size, 0, NULL);
    if (ret < 0)
        goto end;

    /* fill opaque structure used by the AVIOContext read callback */
    bd.ptr  = buffer;
    bd.size = buffer_size;

    if (!(fmt_ctx = FUNC7())) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    avio_ctx_buffer = FUNC6(avio_ctx_buffer_size);
    if (!avio_ctx_buffer) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    avio_ctx = FUNC11(avio_ctx_buffer, avio_ctx_buffer_size,
                                  0, &bd, &read_packet, NULL, NULL);
    if (!avio_ctx) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    fmt_ctx->pb = avio_ctx;

    ret = FUNC10(&fmt_ctx, NULL, NULL, NULL);
    if (ret < 0) {
        FUNC13(stderr, "Could not open input\n");
        goto end;
    }

    ret = FUNC9(fmt_ctx, NULL);
    if (ret < 0) {
        FUNC13(stderr, "Could not find stream information\n");
        goto end;
    }

    FUNC1(fmt_ctx, 0, input_filename, 0);

end:
    FUNC8(&fmt_ctx);

    /* note: the internal buffer could have changed, and be != avio_ctx_buffer */
    if (avio_ctx)
        FUNC5(&avio_ctx->buffer);
    FUNC12(&avio_ctx);

    FUNC4(buffer, buffer_size);

    if (ret < 0) {
        FUNC13(stderr, "Error occurred: %s\n", FUNC2(ret));
        return 1;
    }

    return 0;
}