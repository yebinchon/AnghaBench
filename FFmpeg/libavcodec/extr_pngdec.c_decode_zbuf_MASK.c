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
struct TYPE_10__ {unsigned char* next_in; int avail_in; unsigned char* next_out; unsigned int avail_out; int /*<<< orphan*/ * opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {size_t len; scalar_t__* str; } ;
typedef  TYPE_2__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int Z_OK ; 
 int /*<<< orphan*/  Z_PARTIAL_FLUSH ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,unsigned char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_png_zalloc ; 
 int /*<<< orphan*/  ff_png_zfree ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(AVBPrint *bp, const uint8_t *data,
                       const uint8_t *data_end)
{
    z_stream zstream;
    unsigned char *buf;
    unsigned buf_size;
    int ret;

    zstream.zalloc = ff_png_zalloc;
    zstream.zfree  = ff_png_zfree;
    zstream.opaque = NULL;
    if (FUNC6(&zstream) != Z_OK)
        return AVERROR_EXTERNAL;
    zstream.next_in  = (unsigned char *)data;
    zstream.avail_in = data_end - data;
    FUNC3(bp, 0, AV_BPRINT_SIZE_UNLIMITED);

    while (zstream.avail_in > 0) {
        FUNC2(bp, 2, &buf, &buf_size);
        if (buf_size < 2) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        zstream.next_out  = buf;
        zstream.avail_out = buf_size - 1;
        ret = FUNC4(&zstream, Z_PARTIAL_FLUSH);
        if (ret != Z_OK && ret != Z_STREAM_END) {
            ret = AVERROR_EXTERNAL;
            goto fail;
        }
        bp->len += zstream.next_out - buf;
        if (ret == Z_STREAM_END)
            break;
    }
    FUNC5(&zstream);
    bp->str[bp->len] = 0;
    return 0;

fail:
    FUNC5(&zstream);
    FUNC1(bp, NULL);
    return ret;
}