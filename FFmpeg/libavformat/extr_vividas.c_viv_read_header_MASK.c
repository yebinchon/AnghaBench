#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_13__ {int sb_key; scalar_t__ n_sb_blocks; int current_sb; TYPE_1__* sb_blocks; void* sb_offset; } ;
typedef  TYPE_2__ VividasDemuxContext ;
struct TYPE_14__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int*,int,int*,int) ; 
 int FUNC14 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s)
{
    VividasDemuxContext *viv = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t header_end;
    int num_tracks;
    uint32_t key, k2;
    uint32_t v;
    uint8_t keybuffer[187];
    uint32_t b22_size = 0;
    uint32_t b22_key = 0;
    uint8_t *buf = 0;
    int ret;

    FUNC8(pb, 9);

    header_end = FUNC9(pb);

    header_end += FUNC11(pb);

    num_tracks = FUNC4(pb);

    if (num_tracks != 1) {
        FUNC2(s, AV_LOG_ERROR, "number of tracks %d is not 1\n", num_tracks);
        return FUNC0(EINVAL);
    }

    v = FUNC4(pb);
    FUNC7(pb, v, SEEK_CUR);

    FUNC5(pb, keybuffer, 187);
    key = FUNC10(keybuffer);
    viv->sb_key = key;

    FUNC6(pb);

    for (;;) {
        int64_t here = FUNC9(pb);
        int block_len, block_type;

        if (here >= header_end)
            break;

        block_len = FUNC11(pb);
        if (FUNC3(pb) || block_len <= 0)
            return AVERROR_INVALIDDATA;

        block_type = FUNC4(pb);

        if (block_type == 22) {
            FUNC5(pb, keybuffer, 187);
            b22_key = FUNC10(keybuffer);
            b22_size = FUNC6(pb);
        }

        FUNC7(pb, here + block_len, SEEK_SET);
    }

    if (b22_size) {
        k2 = b22_key;
        buf = FUNC13(pb, &v, b22_key, &k2, 0);
        if (!buf)
            return FUNC0(EIO);

        FUNC1(buf);
    }

    k2 = key;
    buf = FUNC13(pb, &v, key, &k2, 0);
    if (!buf)
        return FUNC0(EIO);
    ret = FUNC14(viv, s, buf, v);
    FUNC1(buf);
    if (ret < 0)
        return ret;

    buf = FUNC13(pb, &v, key, &k2, v);
    if (!buf)
        return FUNC0(EIO);
    ret = FUNC15(viv, s, buf, v);
    FUNC1(buf);
    if (ret < 0)
        return ret;

    viv->sb_offset = FUNC9(pb);
    if (viv->n_sb_blocks > 0) {
        viv->current_sb = 0;
        FUNC12(s, viv, viv->sb_blocks[0].size);
    } else {
        viv->current_sb = -1;
    }

    return 0;
}