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
typedef  int /*<<< orphan*/  VAAPIEncodeSlice ;
typedef  int /*<<< orphan*/  VAAPIEncodePicture ;
struct TYPE_10__ {int data_size; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int /*<<< orphan*/  cbc; int /*<<< orphan*/  scan; int /*<<< orphan*/  huffman_tables; scalar_t__ huffman; int /*<<< orphan*/  frame_header; int /*<<< orphan*/  quant_tables; int /*<<< orphan*/  jfif_header; scalar_t__ jfif; TYPE_2__ current_fragment; } ;
typedef  TYPE_1__ VAAPIEncodeMJPEGContext ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
typedef  TYPE_2__ CodedBitstreamFragment ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOSPC ; 
 scalar_t__ JPEG_MARKER_APPN ; 
 scalar_t__ JPEG_MARKER_DHT ; 
 scalar_t__ JPEG_MARKER_DQT ; 
 scalar_t__ JPEG_MARKER_SOF0 ; 
 scalar_t__ JPEG_MARKER_SOS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx,
                                                 VAAPIEncodePicture *pic,
                                                 VAAPIEncodeSlice *slice,
                                                 char *data, size_t *data_len)
{
    VAAPIEncodeMJPEGContext *priv = avctx->priv_data;
    CodedBitstreamFragment  *frag = &priv->current_fragment;
    int err;

    if (priv->jfif) {
        err = FUNC3(priv->cbc, frag, -1,
                                         JPEG_MARKER_APPN + 0,
                                         &priv->jfif_header, NULL);
        if (err < 0)
            goto fail;
    }

    err = FUNC3(priv->cbc, frag, -1,
                                     JPEG_MARKER_DQT,
                                     &priv->quant_tables, NULL);
    if (err < 0)
        goto fail;

    err = FUNC3(priv->cbc, frag, -1,
                                     JPEG_MARKER_SOF0,
                                     &priv->frame_header, NULL);
    if (err < 0)
        goto fail;

    if (priv->huffman) {
        err = FUNC3(priv->cbc, frag, -1,
                                         JPEG_MARKER_DHT,
                                         &priv->huffman_tables, NULL);
        if (err < 0)
            goto fail;
    }

    err = FUNC3(priv->cbc, frag, -1,
                                     JPEG_MARKER_SOS,
                                     &priv->scan, NULL);
    if (err < 0)
        goto fail;

    err = FUNC4(priv->cbc, frag);
    if (err < 0) {
        FUNC1(avctx, AV_LOG_ERROR, "Failed to write image header.\n");
        goto fail;
    }

    if (*data_len < 8 * frag->data_size) {
        FUNC1(avctx, AV_LOG_ERROR, "Image header too large: "
               "%zu < %zu.\n", *data_len, 8 * frag->data_size);
        err = FUNC0(ENOSPC);
        goto fail;
    }

    // Remove the EOI at the end of the fragment.
    FUNC5(data, frag->data, frag->data_size - 2);
    *data_len = 8 * (frag->data_size - 2);

    err = 0;
fail:
    FUNC2(priv->cbc, frag);
    return err;
}