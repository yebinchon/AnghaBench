#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  cbc; } ;
typedef  TYPE_1__ VAAPIEncodeMPEG2Context ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int data_size; int data_bit_padding; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx,
                                             char *data, size_t *data_len,
                                             CodedBitstreamFragment *frag)
{
    VAAPIEncodeMPEG2Context *priv = avctx->priv_data;
    int err;

    err = FUNC2(priv->cbc, frag);
    if (err < 0) {
        FUNC1(avctx, AV_LOG_ERROR, "Failed to write packed header.\n");
        return err;
    }

    if (*data_len < 8 * frag->data_size - frag->data_bit_padding) {
        FUNC1(avctx, AV_LOG_ERROR, "Access unit too large: "
               "%zu < %zu.\n", *data_len,
               8 * frag->data_size - frag->data_bit_padding);
        return FUNC0(ENOSPC);
    }

    FUNC3(data, frag->data, frag->data_size);
    *data_len = 8 * frag->data_size - frag->data_bit_padding;

    return 0;
}