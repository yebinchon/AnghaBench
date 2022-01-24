#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int avail_in; int avail_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/  next_in; int /*<<< orphan*/ * opaque; int /*<<< orphan*/ * zfree; int /*<<< orphan*/ * zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int avail_in; int avail_out; int /*<<< orphan*/  next_out; int /*<<< orphan*/ * next_in; } ;
struct TYPE_10__ {int block_size; int deflate_block_size; TYPE_3__ zstream; int /*<<< orphan*/  tmpblock; int /*<<< orphan*/ * deflate_block; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_2__ FlashSVContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int Z_OK ; 
 int /*<<< orphan*/  Z_SYNC_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(FlashSVContext *s, uint8_t *src, int size)
{
    z_stream zs;
    int zret; // Zlib return code

    if (!src)
        return AVERROR_INVALIDDATA;

    zs.zalloc = NULL;
    zs.zfree  = NULL;
    zs.opaque = NULL;

    s->zstream.next_in   = src;
    s->zstream.avail_in  = size;
    s->zstream.next_out  = s->tmpblock;
    s->zstream.avail_out = s->block_size * 3;
    FUNC4(&s->zstream, Z_SYNC_FLUSH);

    if (FUNC3(&zs, 0) != Z_OK)
        return -1;
    zs.next_in   = s->tmpblock;
    zs.avail_in  = s->block_size * 3 - s->zstream.avail_out;
    zs.next_out  = s->deflate_block;
    zs.avail_out = s->deflate_block_size;
    FUNC1(&zs, Z_SYNC_FLUSH);
    FUNC2(&zs);

    if ((zret = FUNC5(&s->zstream)) != Z_OK) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Inflate reset error: %d\n", zret);
        return AVERROR_UNKNOWN;
    }

    s->zstream.next_in   = s->deflate_block;
    s->zstream.avail_in  = s->deflate_block_size - zs.avail_out;
    s->zstream.next_out  = s->tmpblock;
    s->zstream.avail_out = s->block_size * 3;
    FUNC4(&s->zstream, Z_SYNC_FLUSH);

    return 0;
}