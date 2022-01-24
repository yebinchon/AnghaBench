#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cbc; int /*<<< orphan*/  gop_header; int /*<<< orphan*/  sequence_display_extension; int /*<<< orphan*/  sequence_extension; int /*<<< orphan*/  sequence_header; int /*<<< orphan*/  current_fragment; } ;
typedef  TYPE_1__ VAAPIEncodeMPEG2Context ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef  int /*<<< orphan*/  CodedBitstreamFragment ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  MPEG2_START_EXTENSION ; 
 int /*<<< orphan*/  MPEG2_START_GROUP ; 
 int /*<<< orphan*/  MPEG2_START_SEQUENCE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,char*,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx,
                                                    char *data, size_t *data_len)
{
    VAAPIEncodeMPEG2Context *priv = avctx->priv_data;
    CodedBitstreamFragment  *frag = &priv->current_fragment;
    int err;

    err = FUNC1(avctx, frag, MPEG2_START_SEQUENCE_HEADER,
                                        &priv->sequence_header);
    if (err < 0)
        goto fail;

    err = FUNC1(avctx, frag, MPEG2_START_EXTENSION,
                                        &priv->sequence_extension);
    if (err < 0)
        goto fail;

    err = FUNC1(avctx, frag, MPEG2_START_EXTENSION,
                                        &priv->sequence_display_extension);
    if (err < 0)
        goto fail;

    err = FUNC1(avctx, frag, MPEG2_START_GROUP,
                                        &priv->gop_header);
    if (err < 0)
        goto fail;

    err = FUNC2(avctx, data, data_len, frag);
fail:
    FUNC0(priv->cbc, frag);
    return 0;
}